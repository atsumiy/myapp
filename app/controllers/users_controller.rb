class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  def edit
  end

  def update
    @user.update!(email: params[:user][:email],next_update_day: params[:user][:next_update_day].to_i)

    @user = User.new(params[:user])
    if @user.save
      # Deliver the signup email
      UserNotifier.send_signup_email(@user).deliver
      redirect_to(@user, :notice => 'User created')
    else
      render :action => 'new'
    end
    redirect_to(user_portfolios_path)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
