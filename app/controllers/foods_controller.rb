class FoodsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @foods = @restaurant.foods
  end
end
