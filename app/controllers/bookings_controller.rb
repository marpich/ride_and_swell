class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @equipment = Equipment.find(params[:equipment_id])
    @booking.equipment = @equipment
    @booking.status = "pending"
    @booking.user = current_user

    if @booking.save
      redirect_to dashboard_path
    else
      render 'equipments/show'
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
