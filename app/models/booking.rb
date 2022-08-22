class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ware

  validates :start_time, :end_time, presence: true

  scope :my_bookings, -> { where(user: current_user) }

  def total_price
    TimeDifference.between(start_time, end_time).in_days * ware.price
  end
end
