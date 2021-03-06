class Item < ApplicationRecord
  belongs_to :admin
  has_many :photos
  mount_uploader :photo, ImageUploader
  
  

  validates :summary, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}


end
