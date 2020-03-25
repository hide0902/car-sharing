class CarsController < ApplicationController
  def index
    @search = Car.ransack(params[:q])
    @cars = @search.result(distinct: true).includes(:images)
  end

  def new
    @car = Car.new
    @car.images.new
  end

  def create
    # binding.pry
    Car.create(car_params)
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :maker, :price, :period, :gas, :type, :handle, :capa, :prefecture, :city, images_attributes: [:image_car, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
