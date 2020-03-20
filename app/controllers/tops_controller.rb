class TopsController < ApplicationController
  def index
  end

  def new
    @item = Car.new
    @item.images.new
  end

  def create
    @item = Car.new(car_params)
  end
end
