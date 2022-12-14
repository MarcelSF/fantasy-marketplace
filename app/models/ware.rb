class Ware < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  after_validation :geocode, if: :will_save_change_to_address?
end
