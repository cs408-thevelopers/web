require 'zip'

class LessonController < ApplicationController
  before_action :find_lesson, except: [:create, :test]
  def find_lesson
    @lesson = Lesson.find(params[:id])
    @klass = @lesson.klass
  end

  def create
    l = Lesson.create(klass_id: params[:klass_id], name: params[:name])
    if params[:file]
      FileUtils.mkdir_p "#{Rails.root}/public/images/#{l.id}"
      Zip::File.open(params[:file].to_io).each do |entry|
        entry.extract "#{Rails.root}/public/images/#{l.id}/#{entry.name}"
      end
    end
    redirect_to "/lesson/#{l.id}"
  end
  
  def update
  end
  
end

