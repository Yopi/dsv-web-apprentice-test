class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.string :ingredients
      t.integer :price
      t.string :food_type
      t.integer :pizzeria_id

      t.timestamps
    end
  end
end
