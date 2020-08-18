class UsersController < ApplicationController
    def new
        if session[:current_user_id]
            redirect_to "/", :notice => "Already logged in"
        end
    end

    def create
        @user = User.new
        @user.username = params[:username]
        @user.email = params[:email]
        @user.password = params[:password]
        @user.first_name = params[:first_name]
        @user.last_name = params[:last_name]
        @user.save

        redirect_to "/login"
    end

end
