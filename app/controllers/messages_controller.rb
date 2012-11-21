class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to messages_path #MAYBE later this will redirect somewhere else
    else
      render :new
    end
  end

  
  
end