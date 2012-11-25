class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @recipient = params[:format]
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    
    @message = Message.new(params[:message])
    if @message.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def check

  end

  def destroy
    message = Message.find(params[:id])
    message.delete
    redirect_to dashboard_index_path
  end
  
end