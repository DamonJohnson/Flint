class LendeesController < ApplicationController
  def create
    @lendee = current_user.build_profile
    redirect_to: new_booking_path
  end
end
