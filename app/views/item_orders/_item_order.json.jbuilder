json.extract! item_order, :id, :item, :cart_id, :created_at, :updated_at
json.url item_order_url(item_order, format: :json)
