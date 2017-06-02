class ProfileController < ApplicationController
  def show

  end

  def edit
    @user = User.find(@current_user[:id])
  end

  def update
    u = User.find(@current_user[:id])
    u.update(user_params)
    redirect_to '/profile/show'
  end

 private

  def user_params
    params.require(:user).permit(:email, :password, :name, :zip_code, :has_daily, :has_weekly, :has_monthly, :notification_type, :notification_freq)
  end

end
