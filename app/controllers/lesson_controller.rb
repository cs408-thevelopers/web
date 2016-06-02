class LessonController < ApplicationController
  before_action :find_lesson
  def find_lesson
    @lesson = Lesson.find(params[:id])
  end

end
