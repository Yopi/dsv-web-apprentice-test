class AddNumberOfPizzasToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :number_of_pizzas, :integer
  end
end
