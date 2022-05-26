class Owner::BookingsController < ApplicationController
  def accept
    @booking = Booking.find(params[:id])
    @booking.status = t(:accepted)
    raise
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = t(:rejected)
    raise
  end
end
