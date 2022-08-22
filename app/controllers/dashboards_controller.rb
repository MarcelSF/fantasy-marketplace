class DashboardsController < ApplicationController
  def bookings_manager
    @bookings = current_user.bookings
  end
end
