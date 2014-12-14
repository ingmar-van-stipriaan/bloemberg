# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fill => [220, 166]
  end

  version :crop do
    process :resize_to_fill => [380, 290]
  end

  version :show do
    process :resize_to_fill => [540, 240]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
