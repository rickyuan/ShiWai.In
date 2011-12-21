class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event, :flash => { :success => "Created a event successful." }
    else
      render 'new'
    end
  end
  
  def show
    @event = Event.find(params[:id])
  end
end
