class CoffeeShopsController < ApplicationController
  before_action :set_coffee_shop, only: [:show, :update, :destroy]

  def index
    @coffee_shops = CoffeeShop.all

    render json: @coffee_shops
  end

  def show
    render json: @coffee_shop
  end

  def create
    @coffee_shop = CoffeeShop.new(coffee_shop_params)

    if @coffee_shop.save
      render json: @coffee_shop, status: :created, location: @coffee_shop
    else
      render json: @coffee_shop.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @coffee_shop.destroy
  end

  private

  def set_coffee_shop
    @coffee_shop = CoffeeShop.find(params[:id])
  end


  def coffee_shop_params
    params.require(:coffee_shop).permit(:address, :barista_id)
  end
end
