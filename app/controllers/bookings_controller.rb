class BookingsController < ApplicationController
  # REMOVE FOR PRODUCTION!!!
  skip_before_action :verify_authenticity_token
  before_action :find_booking, only: [:show, :edit, :update, :destroy]


  def index
    @bookings = current_user.bookings.all
    
  end

  def new
    Booking.new
  end

  def show
  end


  def create
    @booking = current_user.bookings.create(booking_params)
    flash.alert = "Your item has been booked"
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
    flash.alert = "Your booking has been updated."
  end


  private

  def booking_params
    return params.permit(:user_id, :item_id, :start_date, :end_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
  

end
