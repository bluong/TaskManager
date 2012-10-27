class User < ActiveRecord::Base
  attr_accessible :login, :password
  validates :login, :presence => true, :uniqueness => true
  validates :password, :presence => true
  has_many :tasks
end
