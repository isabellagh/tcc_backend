class Api::V1::ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :destroy]


  def index
      @children = Child.all
      render json: ChildSerializer.new(@children)
  end 

  def show 
    @child = Child.find_by(id: params[:id])
    if @child
      render json: @child 
    else
      render json: {error: "No child found"}
    end 
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

  def update 
    @child = Child.find_by(id: params[:id])
    if @child
      @child.update(child_params)
      render json: {child: @child}
    else
      render json: {error: "Child could not be updated."}
    end
  end
  
  def destroy
    if @child
      @child.destroy
      render json: {child: @child}
    else 
      render json: {error: "Child could not be deleted."}
    end 
  end
  
  private

  def child_params
    params.require(:child).permit(:name, :age, :avatar, :allergies, :special_needs, :classroom_id)
  end 

  def set_child
    @child = Child.find_by(id: params[:id])
  end

end
