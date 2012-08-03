class Map < ActiveRecord::Base
  attr_accessible :date, :description, :latitude, :longitude
  validates_presence_of:description
  validates_presence_of:latitude
  validates_presence_of:longitude
end