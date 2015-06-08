class InterestsController < ApplicationController

  def create
    @user = current_user
    @cause = params[:cause_id]

    @interest = Interest.new
    @interest.user_id = @user.id
    @interest.cause_id = @cause
    @interest.save
    redirect_to "/users/#{@user.id}" 
  end

end