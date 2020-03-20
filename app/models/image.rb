class Image < ApplicationRecord
  belongs_to :car, optional: true

  mount_uploaders :image_car, ImageUploader
end
