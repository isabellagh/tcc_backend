class Api::V1::ClassroomsController < ApplicationController

  def index 
    @classrooms = Classroom.all
    render json: ClassroomSerializer.new(@classrooms)
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      #flash[:success] = "classroom successfully created"
      render json: ClassroomSerializer.new(@classroom)
    else
      render json: { errors: @classroom.errors.full_messages }
    end
  end
  
  private

  def classroom_params
    params.require(:classroom).permit(:room_name, :age, :full)
  end 

end
