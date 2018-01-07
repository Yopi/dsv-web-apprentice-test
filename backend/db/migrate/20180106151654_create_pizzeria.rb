class CreatePizzeria < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzeria do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :telephone

      t.timestamps
    end
  end
end
