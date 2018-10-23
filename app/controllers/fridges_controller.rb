class FridgesController < ApplicationController

  # GET /fridges
  def index
    @fridges = Fridge.all
  end

  # GET /fridges/1
  def show
    @fridges = Fridge.find(params[:id])
  end

  # GET /fridges/new
  def new
    @fridge = Fridge.new
  end

  def create
    @fridge = Fridge.create!(fridge_params)
    redirect_to "/fridges/#{@fridge.id}"
  end

  def update
    @fridge = Fridge.find_by(id: params[:id])
    @fridge.update(fridge_params)
    redirect_to "/fridges/#{@fridge.id}"
  end

  private

  def destroy
    @fridge = Fridge.find(params[:id])
    @fridge.destroy
    redirect_to fridges_path
  end

  def fridge_params
    params.require(:fridge).permit(:location, :brand, :size)
  end
end
