class FoodController < ApplicationController
  def index
    @fridge = Fridge.find(params[:fridge_id])
    @food = @fridge.foods
  end

  def new
    @food = Food.new
  end

  def show
    @food = Fridge.find(params[:FridgeId]).Food.find[:id]
  end

  def update
    @food = Fridge.find(params[:FridgeId]).Food.find_by(:id: params[:id])
    @food.update(food_params)
    redirect_to "/fridges/:fridgeId/foods/#{@food.id}"
  end

  private

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  def food_params
    params.require(:food).permit(:name, :weight, :vegan, :timestamp)
  end
end
