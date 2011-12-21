class Event < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :story
end
