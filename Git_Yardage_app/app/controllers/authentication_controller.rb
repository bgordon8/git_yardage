class AuthenticationController < ApplicationController

    def login
        @user = User.find_by email: params[:email]
        
        if !@user
            render json: {message: 'Invalid credentials'}
        else
            if !@user.authenticate params[:password]       
                render json: {message: "Invalid credentials"}, status: :unauthorized
            else
                payload = {user_id: @user.id}
                secret = "hello now there guy"
                token = JWT.encode(payload, secret)

                render json: { token: token }, status: :ok 
            end
        end

    end
end
