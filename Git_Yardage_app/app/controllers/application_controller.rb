class ApplicationController < ActionController::API
    before_action :authenticate 
    
    def authenticate
        auth_header = request.headers["Authorization"]

        if !auth_header
            render json: {message: "No token"}, status: :forbidden
        else
            token = auth_header.split(" ")[1]
            secret = "hello now there guy"
            decoded_token = JWT.decode token, secret
            payload = decoded_token.first
            user_id = payload["user_id"]
            @user = User.find(user_id)


            render json: {message: "success"}, status: :ok
        end
    end
end
