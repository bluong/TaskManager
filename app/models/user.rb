class User < ActiveRecord::Base
  #Testing
  attr_accessible :login, :password
  validates :login, :presence => {:message => "cannot be blank"}, :uniqueness => {:message => "must be unique."}
  validates :password, :presence => {:message => "cannot be blank"}
  has_many :tasks
end
