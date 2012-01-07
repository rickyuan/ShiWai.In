# encoding: utf-8
class Event < ActiveRecord::Base
  attr_accessible :user_id, :name, :story
  validates :name, :presence => true
  validates :story, :presence => true
  
  belongs_to :user
  has_many :posts
  
end
