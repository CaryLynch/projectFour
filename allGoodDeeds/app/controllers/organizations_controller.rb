class OrganizationsController < ApplicationController

  def index
    if session[:user_id] != nil # the client is logged in
      @user = User.find(params[:user_id])
      @cause = Cause.find(params[:cause_id])
      @organization = Organization.all
      render :index
    else
      redirect_to '/'
    end
end