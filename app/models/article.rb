class Article < ActiveRecord::Base
  attr_accessible :body, :name, :doc

  dragonfly_accessor :doc

  validates_property :ext, of: :doc, in:['docx', 'doc', 'txt']
end
