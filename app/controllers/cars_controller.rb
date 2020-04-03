class CarsController < ApplicationController
  def index
    # binding.pry
    @search = Car.ransack(params[:q])
    @cars = @search.result(distinct: true).includes(:images)
  end

  def show
    @car = Car.find(params[:id])
    @image = @car.images
    @reviews = @car.reviews
    @request = Request.new
    @review = Review.new
  end

  def edit
    @car = Car.find(params[:id])
    @image = @car.images.new
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to
    else
      @image = @car.images.new
      render :edit
    end
  end

  def new
    @car = Car.new
    @car.images.new
  end

  def create
    @car = Car.create(car_params)
    if @car.save
      redirect_to root_path
    else
      @car.images.new
      render action: :new
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :maker, :price, :period, :gas, :type, :handle, :capa, :prefecture, :city, images_attributes: [:image_car, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
