class SessionController < ApplicationController
    def new
    end

    def create
        #ninja = Ninja.find_by_(email or whatever)()
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to users_path
        else
            render :new #this is the new.html.erb page
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to users_path
    end
end