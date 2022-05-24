class EquipmentsController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @equipments = Equipement.all
  end

  def show
  end

  def new
    @equipment = Equipement.new
  end

  def create
    @equipment.save
    redirect_to equipement_path(@equipment)
  end

  def edit
    @equipment = Equipement.find(params[:id])
  end

  def update
    @equipement.update(equipement_params)
    redirect_to equipement_path(@equipment)
  end

  def destroy
    @equipement.destroy
    redirect_to equipments_path
  end

  private

  def equipement_params
    params.require(:equipment).permit(:sport, :brand, :price, :image, :description, :location)
  end

  def set_equipment
    @equipment = Equipement.find(params[:id])
  end
end
