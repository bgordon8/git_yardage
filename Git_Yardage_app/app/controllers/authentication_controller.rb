class AuthenticationController < ApplicationController

    def login
        @user = User.find_by email: params[:email]

        render json: { user: @user }, status: :ok 
    end
end
