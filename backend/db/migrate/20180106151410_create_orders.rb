class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :pizzeria_id
      t.string :description
      t.integer :amount

      t.timestamps
    end
  end
end
