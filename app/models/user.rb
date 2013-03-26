class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_digest, :username

  has_secure_password

  validates :username, :email, :presence => true

end
