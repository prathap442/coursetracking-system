class AddColumnToStudentsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :students,:dob,:date
  end
end