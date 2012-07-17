class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :user_id
      t.string :title
      t.integer :price
      t.text :decription

      t.timestamps
    end
  end
end
