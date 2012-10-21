class Task < ActiveRecord::Base
  attr_accessible :course, :due_date, :info, :name
  belongs_to :user
  attr_protected :user_id
end
