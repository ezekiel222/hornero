class AddLinkToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :link, :string
  end
end
