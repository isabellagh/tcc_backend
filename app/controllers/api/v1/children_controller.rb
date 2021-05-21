class Api::V1::ChildrenController < ApplicationController

  def index 
    @children = Child.all
    render json: ChildSerializer.new(@children)
  end 

  def create
    @child = Child.new(child_params)
    # byebug
    if @child.save
      #flash[:success] = "Child successfully created"
      render json: ChildSerializer.new(@child)
    else
      render json: { errors: @child.errors.full_messages }
    end
  end
  
  private

  def child_params
    params.require(:child).permit(:name, :age, :avatar, :allergies, :special_needs, :classroom_id)
  end 

end
