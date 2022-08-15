class StudentsController < ApplicationController
  def index
    render json: Student.all 
  end

  def grades 
    students_by_grade = Student.all.sort_by {|student| student.grade}
    render json: students_by_grade.reverse()
  end

  def highest_grade
    top_student = Student.all.max_by {|student| student.grade}
    render json: top_student
  end
end
