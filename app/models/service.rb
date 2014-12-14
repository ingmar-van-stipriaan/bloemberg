class Service < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :short_description, presence: true
  validates :description, presence: true
  validates :image, presence: true

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end