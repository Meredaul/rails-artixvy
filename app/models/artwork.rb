class Artwork < ApplicationRecord
  belongs_to :user, optional: true
  has_one :purchase
end
