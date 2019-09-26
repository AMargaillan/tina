class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :item_id
      t.integer :admin_id
      t.timestamps
    end

    add_index :photos, [:admin_id, :item_id]
    add_index :photos, :item_id
  end
end
