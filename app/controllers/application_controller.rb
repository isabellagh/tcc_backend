class ApplicationController < ActionController::API
    before_action :authorized

    # WHY?: Will call the authorized method before anything else happens in our app. This will effectively lock down the entire application.

  def encode_token(payload)
    JWT.encode(payload, 'my_s3cr3t')
  end 

  def auth_header
    request.headers['Authorization']
  end 

  def decode_token
    if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
      # The Begin/Rescue syntax allows us to rescue out of an exception in Ruby.
        begin
            JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
        rescue JWT::DecodeError
            nil 
        end 
    end 
  end 

  # STEP 2: Authentication helper methods
  def current_user
    if decode_token
      user_id = decode_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end 

  def logged_in?
    !!current_user
     # returns a boolean instead of truthy user object
  end 

  # STEP 3: Authorization helper methods
  def authorized
    render json: { message: 'Please log in'}, status: :unauthorized unless logged_in?
  end 

end
