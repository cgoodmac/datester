class SearchController < ApplicationController
  def index
    @users = User.search(params[:search])
    # if @user.save
    #     redirect_to edit_user_path(@user)
    #   else
    #     render :new
    #   end
    # redirect_to search_path(@user)
  end

  def show
    @users
  end

end

