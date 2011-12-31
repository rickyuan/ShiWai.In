class PostsController < ApplicationController
  
  def index
    @event = Event.find(params[:event_id])
    @posts = @event.posts
  end
  
  def show
    @event = Event.find(params[:event_id])
    @post = @event.posts.find(params[:id])
  end
  
  def new
    @event = Event.find(params[:event_id])
    @post = @event.posts.build
  end
  
  def create
    @event = Event.find(params[:event_id])
    @post = @event.posts.build(params[:post])
    if @post.save
      redirect_to @event
    else
      render 'new'
    end
  end
  
end