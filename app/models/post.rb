class Post < ActiveRecord::Base
  attr_accessible :date, :map, :text, :user
end
