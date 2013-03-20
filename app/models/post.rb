class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments
  belongs_to :user, :class_name => "User", :foreign_key => "uid"
  accepts_nested_attributes_for :comments
end
