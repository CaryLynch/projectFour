class DeedsController < ApplicationController
  def index
    @user = session[:user_id]
    @deeds = Deed.all
    render :index
  end

  def create
    @user = session[:user_id]
    @deed = Deed.id
    render :index
    redirect_to "/users/#{@user}"  
  end
end


