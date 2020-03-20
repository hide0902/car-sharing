class Car < ApplicationRecord
  belongs_to :user, optional: true
  has_many :images, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :images
end
