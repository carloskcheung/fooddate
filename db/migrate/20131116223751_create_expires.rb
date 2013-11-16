class CreateExpires < ActiveRecord::Migration
  def change
    create_table :expires do |t|
      t.string :food
      t.string :lifedate
      t.string :fridge
      t.string :freezer

      t.timestamps
    end
  end
end
