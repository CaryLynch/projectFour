class CausesController < ApplicationController

  def index
    @user = current_user
    @cause = Cause.all
    render :index
  end
  
  def show
    @user = current_user
    @cause = Cause.find(params[:id])
    @organization = @cause.organizations
    render :show
  end

end
