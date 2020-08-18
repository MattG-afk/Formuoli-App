class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(:email => params[:email])
        if @user
            session[:current_user_id] = @user.id
            redirect_to "/"
        else
          redirect_to "/login", :notice => "Can't find your login."
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to login_path
    end
    
end
