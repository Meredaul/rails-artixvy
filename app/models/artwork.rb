class Artwork < ApplicationRecord

  belongs_to :user
  has_one :purchase

  mount_uploader :photo, PhotoUploader

end
