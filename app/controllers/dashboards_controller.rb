class DashboardsController < ApplicationController
  def bookings_dashboard
    @bookings = current_user.bookings
  end

  def booking_requests_dashboard
    @bookings = Booking.where(ware_id: current_user.wares.pluck(:id).flatten)
  end
end
