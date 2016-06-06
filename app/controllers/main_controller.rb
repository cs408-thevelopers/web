class MainController < ApplicationController
  def index
    @classnames =  %w(A B C D E F G)
    @submenus = %w(Description Participants Materials Settings kkkkk)
  end

  def login
    render layout: false
  end

  def logout
    session[:user] = nil
    redirect_to "/"
  end
  
end
