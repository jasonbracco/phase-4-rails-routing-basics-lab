class StudentsController < ApplicationController

    def index
        student=Student.all 
        render json: student
    end

    def grades 
        grades=Student.all.sort_by{|student| student.grade}.reverse
        render json: grades
    end

    def highest_grade
        high_grade=Student.all.max_by{|student| student.grade}
        render json: high_grade
    end


end
