class EquipmentsController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @equipments = Equipment.all
    @search = params["search"]
    if @search.present?
      @title = @search["title"]
      @equipments = Equipment.where("title ILIKE ?", "%#{@title}%")
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
