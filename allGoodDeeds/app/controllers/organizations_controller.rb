class OrganizationsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @cause = Cause.find(params[:cause_id])
    @organization = Organization.all
    render :index
end