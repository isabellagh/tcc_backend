class Api::V1::ChildrenController < ApplicationController
  skip_before_action :authorized, only: [:index, :update, :destroy, :create]

  def index
    # if current_user
      @children = Child.all
      render json: ChildSerializer.new(@children)
    # else
    #   render json: { error: 'You need to be logged in!' }, status: :not_acceptable
    # end 
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
    
    binding.pry
    
  end
  
  def delete

  end
  
  private

  def child_params
    params.require(:child).permit(:name, :age, :avatar, :allergies, :special_needs, :classroom_id)
  end 

end
