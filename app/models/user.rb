class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :status, :uid
  def full_name
    self.first_name << " "<< self.last_name
  end
end
