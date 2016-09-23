class UsersController < ApplicationController
  def show
    @user = User.includes(:arrival_times).find(params[:id])
  end
end
