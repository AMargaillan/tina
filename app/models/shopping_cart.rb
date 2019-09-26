class ShoppingCart < ApplicationRecord
  def change
    create_table :shopping_cart do |t|
      t.integer :quantity
      t.timestamps
    end
  end
end
