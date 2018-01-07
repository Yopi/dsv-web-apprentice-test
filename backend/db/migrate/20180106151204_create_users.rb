class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
