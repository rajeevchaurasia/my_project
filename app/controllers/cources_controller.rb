class CourcesController < ApplicationController
  # load_and_authorize_resource
  before_filter :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :current_person

  def index
    @courses = @current_person.courses
  end

  def new
    @course = current_person.courses.new
  end

  def create
    @course = current_person.courses.new(course_params)
    if @course.save
      redirect_to user_cource_path(current_person.id, @course.id)
    else
      render 'new'
    end  
  end

  def show
  end

  private
  def set_course
    @course = current_person.courses.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :body)
  end
end
