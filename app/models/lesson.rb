class Lesson < ActiveRecord::Base
  attr_accessible :body, :category, :name, :video_url
end
