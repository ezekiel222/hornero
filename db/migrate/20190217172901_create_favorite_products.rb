class CreateFavoriteProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_products do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
