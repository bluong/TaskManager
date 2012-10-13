class Task < ActiveRecord::Base
  attr_accessible :course, :due_date, :info, :name
end
