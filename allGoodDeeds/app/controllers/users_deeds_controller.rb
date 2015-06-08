class UsersDeedsController < ApplicationController

  def create
    @user = current_user
    @deed = params[:deed_id]

    @users_deed = UsersDeed.new
    @users_deed.user_id = @user.id
    @users_deed.deed_id = @deed
    @users_deed.save
    redirect_to "/users/#{@user.id}"  
  end
end