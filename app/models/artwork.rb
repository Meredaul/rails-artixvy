class Artwork < ApplicationRecord
  belongs_to :user, optional: true
  has_one :purchase

  mount_uploader :photo, PhotoUploader

end
