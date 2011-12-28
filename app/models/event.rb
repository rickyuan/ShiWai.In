class Event < ActiveRecord::Base
  attr_accessible :user_id, :name, :story
  validates_presence_of :name
  validates_presence_of :story
  
  belongs_to :user
  has_many :posts
  
end
