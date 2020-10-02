class ScoresController < ApplicationController
    def index
        @scores = Score.all

        render json: @scores, include: [:hole]
    end

    def show
        @score = Score.find_by(params[:id])
    
        render json: @score, include: [:hole]
    end
end
