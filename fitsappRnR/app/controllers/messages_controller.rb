class MessagesController < ApplicationController
  before_action :find_message, only: [:show]

  def index
    @messages = Message.all.order("created_at DESC")
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
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
