class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :email_address
      t.string :name
      t.bigint :phone_number
      t.string :item_name

      t.timestamps
    end
  end
end
