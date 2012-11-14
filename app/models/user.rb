class User < ActiveRecord::Base
  attr_accessible :login, :password_digest, :password_confirmation, :password
  has_secure_password
  validates :login, :presence => {:message => "cannot be blank"}, :uniqueness => {:message => "must be unique."}
  has_many :tasks
end
