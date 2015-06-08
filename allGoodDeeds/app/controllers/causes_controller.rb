class CausesController < ApplicationController

  def index
    if session[:user_id] != nil # the client is logged in
      @user = current_user
      @cause = Cause.all
      render :index
    else
      redirect_to '/'
    end
  end
  
  def show
    if session[:user_id] != nil # the client is logged in
      @user = current_user
      @cause = Cause.find(params[:id])
      @organization = @cause.organizations
      render :show
    else
      redirect_to '/'
    end
  end

end
