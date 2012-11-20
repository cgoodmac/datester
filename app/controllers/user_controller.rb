class ArtistsController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
      @user = User.new(params[:user])

    if @user.save
      redirect_to users_path
    else
      render :new
    end
    end

    def show
      user_id = params[:id]
      @user = User.find(user_id)
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])

    if @user.update_attributes(params[:artist])
      redirect_to @user
    else
      render :edit
    end
    end

    def destroy
      user = User.find(params[:id])
      user.delete
      redirect_to user
    end
end