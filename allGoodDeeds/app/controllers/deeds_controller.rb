class DeedsController < ApplicationController

  def index
    if session[:user_id] != nil # the client is logged in
      @user = current_user
      @deeds = Deed.all
      render :index
    else
      redirect_to '/'
    end
  end

  def show
    if session[:user_id] != nil # the client is logged in
      @user = current_user
      @deed = Deed.find(params[:id])

      @organizations = Organization.all

    render :show
    else
      redirect_to '/'
    end
  end

end
