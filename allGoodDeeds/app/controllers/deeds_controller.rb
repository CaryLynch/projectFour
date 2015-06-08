class DeedsController < ApplicationController

  def index
    @user = current_user
    @deeds = Deed.all
    render :index
  end

  def show
    @user = current_user
    @deed = Deed.find(params[:id])

    @organizations = Organization.all

    render :show
  end

end
