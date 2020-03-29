class RequestsController < ApplicationController
  def create
    request = Request.create(request_params)
    @car = Car.find(params[:car_id])
    redirect_to root_path
  end

  private

  def request_params
    params.require(:request).permit( :start_rent, :end_rent, :place, :text, :tel ).merge(user_id: current_user.id, car_id: params[:car_id])
  end

end
