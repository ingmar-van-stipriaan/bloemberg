class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :short_description, presence: true
  validates :description, presence: true
  validates :image, presence: true
end