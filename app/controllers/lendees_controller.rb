class LendeesController < ApplicationController
  
  def create
    @lendee = current_user.build_lendee
    render plain: @lendee
    # redirect_to: new_booking_path
  end
  
end
