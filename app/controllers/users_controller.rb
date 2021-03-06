class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @cars = current_user.cars
    @request = @user.requests
  end
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :image_user)
  end
end
