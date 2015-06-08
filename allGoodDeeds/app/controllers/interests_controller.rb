class InterestsController < ApplicationController

  def create
    @user = current_user
    @cause = params[:id]
    redirect_to "/users/#{@user.id}"     
  end

end