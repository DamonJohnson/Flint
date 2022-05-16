class BookingsController < ApplicationController
  # REMOVE FOR PRODUCTION!!!
  skip_before_action :verify_authenticity_token



  def index
    @bookings = current_user.bookings.all
  end

  def new
    Booking.new
  end

  def create
    @booking = current_user.bookings.create(booking_params)
    flash[:success] = "Your item has been booked"
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect to bookings_path
  end


  private

  def booking_params
    return params.permit(:user_id, :item_id, :start_date, :end_date)
  end

end
