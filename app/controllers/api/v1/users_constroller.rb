class Api::V1::UsersController < ApplicationController

    # def index 
    #   @users = User.all
    #   render json: UserSerializer.new(@users)
    # end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        #flash[:success] = "user successfully created"
        render json: { user: UserSerializer.new(@user) }, status: :created
      else
        render json: { errors: @user.errors.full_messages }
      end
    end
    
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end 
  
  end