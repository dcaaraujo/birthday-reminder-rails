class DashboardController < ApplicationController
  before_action :authorize_user

  def index
    @user = User.find(session[:user_id])
  end
end
