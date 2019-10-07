class Order < ApplicationRecord
 

  validates :email_address, presence: true
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :item_name, presence: true
  
end
