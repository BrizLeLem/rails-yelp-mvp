class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show]

  # GET "restaurants"
  def index
    @restaurants = Restaurant.all
  end

  # GET "restaurants/new"
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # GET "restaurants/38"
  def show
    @review = Review.new
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:id, :name, :address, :phone_number, :category)
  end
end
