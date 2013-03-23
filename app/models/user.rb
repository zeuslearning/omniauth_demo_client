class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :status, :uid
  def full_name
    "#{first_name} #{last_name}".strip
  end
end
