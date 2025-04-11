class ApplicationController < ActionController::API
    before_action :authorized
  
    def encode_token(payload)
      JWT.encode(payload, Rails.application.secret_key_base)
    end
  
    def auth_header
      request.headers['Authorization']
    end
  
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        begin
          puts "TOKEN: #{token}"
          JWT.decode(token, Rails.application.secret_key_base, true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def current_user
      decoded = decoded_token
      if decoded
        user_id = decoded[0]['user_id'] rescue nil
        @current_user ||= User.find_by(id: user_id)
      end
    end
  
    def logged_in?
      !!current_user
    end
  
    def authorized
      render json: { error: 'Please log in' }, status: :unauthorized unless logged_in?
    end
  end
  