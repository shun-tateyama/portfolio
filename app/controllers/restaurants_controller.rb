class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:image)
  end
end
