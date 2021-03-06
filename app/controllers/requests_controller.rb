class RequestsController < ApplicationController
  def show
    @request = Request.find(params[:id])
    @message = Message.new
    @messages = @request.messages
  end

  def create
    request = Request.create(request_params)
    @car = Car.find(params[:car_id])
    redirect_back(fallback_location: root_path)
  end

  private

  def request_params
    params.require(:request).permit( :start_rent, :end_rent, :place, :text, :tel ).merge(user_id: current_user.id, car_id: params[:car_id])
  end

end
