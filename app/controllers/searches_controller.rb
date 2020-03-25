class SearchesController < ApplicationController
  def index
    @search = Car.ransack(params[:q])
  end
end
