class Photo < ApplicationRecord
  belongs_to :admin
  belongs_to :item
  mount_uploader :photo, ImageUploader
  

  
end
