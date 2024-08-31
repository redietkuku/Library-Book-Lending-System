class StudentsController < ApplicationController
    def index
        @students = Student.all
        render json: @students
    end

    def show
        @student = Student.find(params[:id])
        render json: @students
    end

    def create
        @student = Student.new(model_params)
        if @student.save
            render json: @student
        else
            render json: @student.errors
        end
    end

    def update
        @student = Studnet.find(params[:id])
        if @student.save
            render json: @student
        else
            render json: @student.errors
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @studnet.destroy
        render json: {message: "Student deleted succesfully"}
    
    end

    private

    def model_params
        params.require(:payload).permit(:code, :name, :batch, :semester)
    end
end
