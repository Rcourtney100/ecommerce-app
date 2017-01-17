class AddProductIdToWishlists < ActiveRecord::Migration[5.0]
  def change
    add_column :wishlists, :product_id, :integer
  end
end
