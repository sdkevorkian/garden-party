class SignupController < ApplicationController
  def new

  end

  def create
    user = User.create(user_params)
    puts "======" + user.inspect
    if user.save
      session[:user_id] = user.id
      redirect_to '/plant'
    else
      redirect_to signup_path
    end
  end

 private

  def user_params
    params.require(:user).permit(:email, :password, :name, :zip_code)
  end
end
