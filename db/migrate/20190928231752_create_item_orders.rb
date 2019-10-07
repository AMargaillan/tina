class CreateItemOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :item_orders do |t|
      t.references :item, foreign_key: true
      t.belongs_to :cart, foreign_key: true
      t.integer :quantity, default: 1
      
      t.timestamps
    end
  end
end
