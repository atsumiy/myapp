class UsersController < ApplicationController
  has_one :user_portfolio
  before_action :set_user, only: [:edit, :update]
  def edit
  end

  def update
    @user.update!(email: params[:user][:email],next_update_day: params[:user][:next_update_day].to_i)
    redirect_to(user_portfolios_path)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
