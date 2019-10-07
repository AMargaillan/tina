class ItemOrder < ApplicationRecord
  belongs_to :cart
  references :item 

  def total_price
    item.price.to_i * quantity.to_i
  end
end

