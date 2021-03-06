# encoding: utf-8
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
  
  def edit
    @event = Event.find(params[:event_id])
    @post = @event.posts.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:event_id])
    @post = @event.posts.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to @event, :flash => { :success => "修改成功！" }
    else
      render 'edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:event_id])
    @post = @event.posts.find(params[:id])
    @user = User.find(@event.user_id)
    if current_user == @user
      @post.destroy
      redirect_to @event
    else
      redirect_to root_path
    end
  end
  
  private 
  
end
