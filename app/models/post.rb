class Post < ActiveRecord::Base
  attr_accessible :event_id, :content, :photo
  validates_presence_of :content, :photo
  belongs_to :event
  
  mount_uploader :photo, PhotoUploader
end
