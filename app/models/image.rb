class Image < ApplicationRecord
  belongs_to :car, optional: true

  mount_uploader :image_car, ImageUploader
  
end
