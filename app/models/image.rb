class Image < ApplicationRecord
  mount_uploaders :image_car, ImageUploader
end
