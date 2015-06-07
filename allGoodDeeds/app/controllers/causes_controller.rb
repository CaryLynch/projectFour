class CausesController < ApplicationController
  def new
    @causes = Cause.all
    render :index
  end
end
