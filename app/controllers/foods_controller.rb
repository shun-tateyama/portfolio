class FoodsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @foods = @restaurant.foods
  end

  private

  def food_params
    params.require(:food).permit(:image)
  end
end
