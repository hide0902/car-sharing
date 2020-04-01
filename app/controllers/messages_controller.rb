class MessagesController < ApplicationController
  def create
    message = Message.create(message_params)
    @request = Request.find(params[:request_id])
    redirect_back(fallback_location: root_path)
  end

  private
  def message_params
    params.require(:message).permit(:comment, :image_request).merge(user_id: current_user.id, request_id: params[:request_id])
  end
end
