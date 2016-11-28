class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(create_params)
    @group.save
    redirect_to root_path
  end

  def show
    @group = Group.find(params[:id])
  end

private
 def create_params
   params.require(:group).permit(:name)
 end
end
