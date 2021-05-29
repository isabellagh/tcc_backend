class Api::V1::ClassroomsController < ApplicationController
  # skip_before_action :authorized, only: [:index, :update, :destroy, :create]
  before_action :set_classroom, only: [:show, :update, :destroy]


  def index 
    @classrooms = Classroom.all
    render json: ClassroomSerializer.new(@classrooms)
  end

  def show 
    @classroom = Classroom.find_by(id: params[:id])
    if @classroom
      render json: @classroom 
    else
      render json: {error: "No classroom found"}
    end 
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

  def update 
    @classroom = Classroom.find_by(id: params[:id])
    if @classroom
      @classroom.update(classroom_params)
      render json: @classroom, status: :accepted
    else
      render json: { errors: @classroom.errors.full_messages }, status: :unprocessible_entity
    end
  end
  
  def destroy
    if @classroom
      @classroom.destroy
      render json: {classroom: @classroom}
    else 
      render json: {error: "Classroom could not be deleted."}
    end 
  end 
  
  private

  def classroom_params
    params.require(:classroom).permit(:room_name, :age, :full, :teacher_name) 
    # , :user_id
  end 

  def set_classroom
    @classroom = Classroom.find_by(id: params[:id])
  end

end
