class MessagesController < ApplicationController
  before_action :find_message, only: [:show]
  before_action :authenticate_user!


  def index
    @messages = Message.all.order("created_at DESC")
  end

  def new
    @message = current_user.messages.build
  end

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      redirect_to @message, notice: 'Message sent'
    else
      render :new
    end
  end

  def show
  end

  private

  def find_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:sender, :receiver, :subject, :body )
  end

end
