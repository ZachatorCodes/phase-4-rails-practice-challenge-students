class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students, status: :ok
  end

  def show
    student = find_student
    render json: student, status: :ok
  end

  private

  def find_student
    Student.find(params[:id])
  end

end
