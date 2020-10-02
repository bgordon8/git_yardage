class CoursesController < ApplicationController
    def index
        @courses = Course.all

        render json: @courses, include: [:holes]
    end
end
