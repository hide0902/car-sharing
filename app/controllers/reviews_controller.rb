class ReviewsController < ApplicationController
  def create
    review = Review.create(review_params)
    @car = Car.find(params[:car_id])
    redirect_back(fallback_location: root_path)
  end

  private
  def review_params
    params.require(:review).permit(:comment).merge(user_id: current_user.id, car_id: params[:car_id])
  end
end
