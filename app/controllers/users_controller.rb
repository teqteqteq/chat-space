class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to root_path
  end

private
  def user_params
    binding_pry
      params.require(:user).permit(:name, {:group_ids => []})
    end

end
