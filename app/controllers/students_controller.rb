class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def id 
    student = Student.find_by(id: params[:id])
    render json: student
  end

  def name
    student = Student.where(name: params[:name])
    render json: student
  end

end
