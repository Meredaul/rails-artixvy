# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process eager: true
  process convert: 'jpg'

  version :card_picture do
    cloudinary_transformation width: 150, height: 220, crop: :fit
  end

  version :background do
    cloudinary_transformation width: 800, height: 300, crop: :fit
  end

end
