class MainController < ApplicationController
  def index
    @classnames =  %w(A B C D E F G)
    @submenus = %w(Description Participants Materials Settings kkkkk)
  end
end
