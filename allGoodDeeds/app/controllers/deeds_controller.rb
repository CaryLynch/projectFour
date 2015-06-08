class DeedsController < ApplicationController
  def index
    @user = session[:user_id]
    @deeds = Deed.all
    render :index
  end

  def create
    @user = session[:user_id]

    # @deed = Deed.create({user_id: params[:user_id], deed_id: params[:deed_id]})

    redirect_to "/users/#{@user}"  
  end
end


