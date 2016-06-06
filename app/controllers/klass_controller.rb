class KlassController < ApplicationController
  before_action :find_class
  def find_class
    @klass = Klass.find params[:id]
  end

  def create_lesson
    l = @klass.lessons.create name: params[:name]
    if params[:file]
      FileUtils.mkdir_p "#{Rails.root}/public/images/#{l.id}"
      Zip::File.open(params[:file].to_io).each do |entry|
        entry.extract "#{Rails.root}/public/images/#{l.id}/#{entry.name}"
      end
    end
    redirect_to "/lesson/#{l.id}"
  end
  
end
