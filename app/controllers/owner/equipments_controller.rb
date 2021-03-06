class Owner::EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.where(user: current_user)
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @user = current_user
    @equipment.user = @user
    if @equipment.save
      redirect_to owner_equipments_path
    else
      render :new
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit(:sport, :brand, :price, :photo, :description, :location, :board_size, :sail_size, :title, :condition)
  end
end
