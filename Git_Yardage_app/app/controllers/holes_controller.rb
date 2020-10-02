class HolesController < ApplicationController
    def index
        @holes = Hole.all

        render json: @holes, include: [:course, :coords]
    end

    def show
        @hole = Hole.find_by(params[:id])
    
        render json: @hole, include: [:coords]
    end
end
