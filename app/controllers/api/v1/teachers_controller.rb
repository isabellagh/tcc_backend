class Api::V1::TeachersController < ApplicationController

  def index 
    @teachers = Teacher.all
    render json: TeacherSerializer.new(@teachers)
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      #flash[:success] = "teacher successfully created"
      render json: @teacher, status: :accepted
    else
      render json: { errors: @teacher.errors.full_messages }, status: :unprocessible_entity
    end
  end
  
  private

  def teacher_params
    params.permit(:name, :age, :image, :classroom_id)
  end 

end
