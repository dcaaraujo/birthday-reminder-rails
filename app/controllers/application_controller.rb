class ApplicationController < ActionController::Base

  protected

    def authorize_user
      return if User.exists?(session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
end
