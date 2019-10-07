class Item < ApplicationRecord
  before_destroy :not_referenced_by_any_item_order
  belongs_to :admin
  has_many :photos
  has_many :item_orders
  mount_uploader :photo, ImageUploader
  
  

  validates :summary, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}

  private

  def not_referenced_by_any_item_order
    unless item_orders.empty?
      errors.add(:base, "Item orders present")
      throw :abort
    end
  end
  
end
