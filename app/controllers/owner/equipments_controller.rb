class Owner::EquipmentsController < ApplicationController
  
  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save
    redirect_to equipment_path(@equipment)
  end

  private

  def equipment_params
    params.require(:equipment).permit(:sport, :brand, :price, :image, :description, :location, :board_size, :sail_size)
  end
end
