class CarsController < ApplicationController
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
    params.require(:car).permit(:name, :maker, :price, :prefecture, :city, images_attributes: [:image_car, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
