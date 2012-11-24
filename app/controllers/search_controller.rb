class SearchController < ApplicationController
  def index
    @results = User.search(params[:search], params[:gender])
  end
end

