class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :cart_id
      t.float :price
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
