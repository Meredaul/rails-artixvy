class Artwork < ApplicationRecord

  belongs_to :user
  has_one :purchase

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
