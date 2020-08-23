class ApplicationController < ActionController::Base
    before_action :current_user

    helper_method :current_user, :logged_in?
    def home

    end

    private

    def current_user 
        if session[:current_user_id]
            @current_user = User.find_by(id:session[:current_user_id])
        end
    end

    def logged_in?
        !!session[:current_user_id]
    end

    def require_login
        redirect_to controller: 'sessions', action: 'new'  if !current_user  
    end
  
    def login(user)
        session[:current_user_id] = @user.id
    end


end
