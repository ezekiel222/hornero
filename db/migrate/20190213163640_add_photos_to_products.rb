class AddPhotosToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :photo
      t.attachment :photo1
      t.attachment :photo2
    end
  end

  def self.down
    remove_attachment :products, :photo
    remove_attachment :products, :photo1
    remove_attachment :products, :photo2
  end
end
