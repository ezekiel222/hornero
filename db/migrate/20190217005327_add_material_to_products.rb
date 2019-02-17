class AddMaterialToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :material
  end
end
