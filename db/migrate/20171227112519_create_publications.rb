class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.string :instructor
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
