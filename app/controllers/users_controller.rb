class UsersController < ApplicationController
    def new
        if session[:current_user_id]
            redirect_to "/", :notice => "Already logged in"
        end
    end

    def create
        @user = User.new(user_params)

        @user.save

        redirect_to "/login"
    end

    private 

    def user_params
        params.permit(:username, :email, :password, :first_name, :last_name)
    end

end
