class BookingsController < ApplicationController
  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @ware = Ware.find(params[:ware_id])
    @booking.ware = @ware
    if @booking.save
      redirect_to dashboards_path
    else
      render "wares/show"
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
