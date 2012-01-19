# encoding: utf-8
class EventsController < ApplicationController
  before_filter :correct_user, :only => [:edit, :update]
  
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
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to @event, :flash => { :success => '更新成功！' }
    else
      render 'edit'
    end
  end
  
  private
  def correct_user
    @event = Event.find(params[:id])
    @user = User.find(@event.user_id)
    redirect_to(root_path) unless current_user == @user
  end
  
end
