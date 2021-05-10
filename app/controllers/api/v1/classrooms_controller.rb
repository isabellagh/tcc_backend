class Api::V1::ClassroomsController < ApplicationController

  def index 
    @classrooms = Classroom.all
    render json: ClassroomSerializer.new(@classrooms)
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      #flash[:success] = "classroom successfully created"
      render json: @classroom, status: :accepted
    else
      render json: { errors: @classroom.errors.full_messages }, status: :unprocessible_entity
    end
  end
  
  private

  def classroom_params
    params.permit(:room_name, :age, :full)
  end 

end
