class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destry]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  def new 
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # redirect_to restaurants_path # -> redirect to index of restaurants
    redirect_to restaurant_path(@restaurant)  # -> redirect to restaurant show
  end

  def edit 
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    # redirect_to restaurants_path # -> redirect to index of restaurants
    redirect_to restaurant_path(@restaurant)  # -> redirect to restaurant show
  end

  def destroy
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :rating)
  end
end
