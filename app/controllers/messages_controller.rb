class MessagesController < ApplicationController
  def index
    @messages = current_user.messages.page(params[:page])
  end

  def new
    @message = Message.new(from: current_user.id, to: params[:user_id])
  end

  def create
    message = Message.create(from: current_user.id, to: params[:message][:to], body: params[:message][:body])
    if message.persisted?
      redirect_to users_path, notice: 'Message sent!'
    else
      render 'new'
    end
  end
end
