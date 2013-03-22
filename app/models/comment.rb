class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :name  
  belongs_to :user, :class_name => "User", :foreign_key => "uid"
end
