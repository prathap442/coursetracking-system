class AddColumToTheStudentsController < ActiveRecord::Migration[5.1]
  def change
     add_column :students,:city_id,:integer
  end
end