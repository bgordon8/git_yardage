class AuthenticationController < ApplicationController
    skip_before_action :authenticate, only: [:login, :register]
    
    def login
        @user = User.find_by email: params[:email]
        
        if !@user
            render json: { message: 'Invalid credentials' }
        else
            if !@user.authenticate params[:password]       
                render json: { message: "Invalid credentials" }, status: :unauthorized
            else
                payload = { user_id: @user.id }
                secret = Rails.application.secrets.secret_key_base
                token = JWT.encode(payload, secret)

                render json: { token: token }, status: :ok 
            end
        end

    end

    
    def register
        @user = User.find_by email: params[:email]

        if @user
            render json: { message: "email taken" }, status: :ok
        else
            @user = User.create(
                username: params[:username],
                first_name: params[:first_name],
                last_name: params[:last_name],
                email: params[:email],
                password: params[:password],
                handicap: params[:handicap]
            )

            payload = { user_id: @user.id }
            secret = Rails.application.secrets.secret_key_base
            token = JWT.encode(payload, secret)

            render json: { token: token }, status: :ok
        end
    end

end
