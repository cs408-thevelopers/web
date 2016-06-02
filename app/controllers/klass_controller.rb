class KlassController < ApplicationController
  before_action :find_class
  def find_class
    @klass = Klass.find params[:id]
  end
  
end
