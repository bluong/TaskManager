class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :course
      t.datetime :due_date
      t.text :info
      t.references :user
      t.timestamps
    end
  end
end
