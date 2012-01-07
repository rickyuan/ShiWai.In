class PagesController < ApplicationController
  def index
    @events = Event.page(params[:page])    
  end
end
