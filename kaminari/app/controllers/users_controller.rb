class UsersController < ApplicationController
  def index
    #@users = User.all
  	@users = User.order("first_name").page(params[:page]).per(5)
  end
  def new
  	@user = User.new

  	render :new
  end
  def create
  	user = User.new(user_params)
  	if user.save
      redirect_to user_path(user.id)
  	else
  		redirect_to users_new_path
  	end
  end

  private 

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :age)
  end
end
