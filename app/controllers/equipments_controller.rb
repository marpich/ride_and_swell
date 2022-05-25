class EquipmentsController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @equipments = Equipment.all
    # binding.pry
    @search = params["equipment"]
    if @search.present?
      @sport = params["equipment"]["sport"]
      @equipments = Equipment.where(sport: @sport)
    end

    @markers = @equipments.geocoded.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude,
        image_url: helpers.asset_url("surfboard.jpg")
      }
    end
  end

  def show
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save
    redirect_to equipment_path(@equipment)
  end

  def edit
  end

  def update
    @equipement.update(equipment_params)
    redirect_to equipment_path(@equipment)
  end

  def destroy
    @equipment.destroy
    redirect_to equipments_path
  end

  private

  def equipment_params
    params.require(:equipment).permit(:sport, :brand, :price, :image, :description, :location, :board_size, :sail_size)
  end

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end
end
