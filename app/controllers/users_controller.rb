class UsersController < ApplicationController
  def dashboard
    @bookings = Booking.where(user: current_user)
    @requests = Booking.joins(:equipment).where(equipment: {user_id: current_user})
  end
end
