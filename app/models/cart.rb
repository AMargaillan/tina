class Cart < ApplicationRecord
  has_many :item_orders, dependent: :destroy

  def add_item(item)
    current_item = item_orders.findby(item.id)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = item_orders.build(item.id)
    end
    current_item
  end

  def total_price
    item_orders.to_a.sum { |item| item.total_price }
  end 
end
