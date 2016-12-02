class GroupsController < ApplicationController
  before_action :set_groups ,except: [:new, :create]
  def new
    @group = Group.new
  end

  def edit
  end

  def update
      if @group.update(create_params)
        redirect_to root_path
      else
        redirect_to edit_group_path
      end
  end

  def create
    @group = Group.new(create_params)
    if @group.save
      redirect_to root_path
    else
      redirect_to new_group_path
    end
  end

  def show
  end

  private
  def create_params
   params.require(:group).permit(:name, {user_ids: []})
  end

  def set_groups
   @group = Group.find(params[:id])
  end
end
