class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :password_digest, :username

  has_secure_password

  validates :username, :presence => true, :uniqueness => true, :format => { :with => /^\w+$/ }
  validates :email, :presence => true, :uniqueness => true

end
