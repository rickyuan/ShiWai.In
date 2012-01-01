class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end
  
  def new
    @event = current_user.events.new
  end
  
  def create
    @event = current_user.events.build(params[:event])
    if @event.save
      redirect_to @event, :flash => { :success => "Created a event successful." }
    else
      render 'new'
    end
  end
  
  def show
    @event = Event.find(params[:id])
    @user = User.find(@event.user_id)
    @posts = @event.posts
  end
  
end
