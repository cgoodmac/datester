class DashboardController < ApplicationController
    def index
      @messages = Message.find_all_by_recipient(@auth[:id])
    end
end