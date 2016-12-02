class GroupsController < ApplicationController
  before_action :set_groups ,except: [:new, :create]
  def new
    @group = Group.new
  end

  def edit
  end

  def update
    @group.update(create_params)
    redirect_to root_path
  end

  def create
    @group = Group.new(create_params)
    if @group.save
      redirect_to root_path
    else
      redirect_to action: "new"
    end
  end

  def show
  end

  private
  def create_params
   params.require(:group).permit(:name, {user_ids: []})
   binding.pry
  end

  def set_groups
   @group = Group.find(params[:id])
  end
end
