class UsersController < ApplicationController
  # Will only execute controller methods after executing the before_action method.
  # Of course, it will not authenticate for new and create because that is what we specified below
  before_action :authenticate, except: [:new, :create]

  def new
    render :new
  end

  def create
    name = params["name"]
    location = params["location"]
    email = params["email"]
    password = params["password"]
    @user = User.create(name: name, location: location, email: email, password: password)
    session["user_id"] = @user.id
    redirect_to "/"
  end

  def show
    @user = User.find(params[:id])
    @cause = @user.causes
    @deed = @user.deeds
    render :show
  end

  def edit
    puts "use show page"
   
    # We can use the current_user method in the application_controller to get the user.
    @user = current_user
   
    render :edit
  end
end
