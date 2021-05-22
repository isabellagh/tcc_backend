class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

    def index 
      @users = User.all
      render json: UserSerializer.new(@users)
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        #flash[:success] = "user successfully created"
        # passing encode_token a payload of user id
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
    
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end 
  
  end