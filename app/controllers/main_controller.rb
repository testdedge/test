class MainController < ApplicationController
  def main
    @newuser = User.new
    @user = User.new
    @atimes = ArrivalTime.includes(:user).all
  end

  def create_user
    u = User.new
    u.name = params[:user][:name]
    if u.save
      flash[:notice] = "User created successful"
    else
      flash[:alert] = "User didn't create"
    end
    redirect_to root_path
  end

  def login
    at = ArrivalTime.new


    u = User.find_by name: params[:user][:name]
    if u
      at.user_id = u.id
      at.save
      flash[:notice] = "Your arrival is successfully tracked"
    else
      flash[:alert] = "Username doesn't exist"
    end
    flash[:alert] = "You are late" if at.valid? && at.lateness

    redirect_to root_path
  end
end
