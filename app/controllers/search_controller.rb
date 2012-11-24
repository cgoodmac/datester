class SearchController < ApplicationController
  def index
    @results = User.search(params[:search])

    # if results.save
    #   redirect_to dashboard_index_path
    # else
    #   render :index
    # end
  end


end

