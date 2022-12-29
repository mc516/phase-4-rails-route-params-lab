class StudentsController < ApplicationController

  def index
    if params[:name]
      student = Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:name]}%", " %#{params[:name]}%")
      render json: student
    else
      render json: Student.all
    end
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end
end
