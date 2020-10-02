class UsersController < ApplicationController
    skip_before_action :authenticate, only: [:create]

    def index
        @users = User.all

        render json: @users, include: [:scores]
    end

    

    def create
        @user = User.create(
            username: params[:username],
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            password: params[:password],
            handicap: params[:handicap]
        )

        render json: @user
    end
end

