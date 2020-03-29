class Car < ApplicationRecord
  belongs_to :user, optional: true
  has_many :images, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :requests, dependent: :destroy

  accepts_nested_attributes_for :images
  self.inheritance_column = :_type_disabled
  enum period: { "1日": 0, "2~3日": 1, "4~7日": 2, "２週間": 3, "1月以上": 4 }, _prefix: true
  enum gas: { "レギュラー": 0, "ハイオク": 1, "軽油": 2, "ハイブリッド": 3, "電気自動車": 4 }, _prefix: true
  enum type: { "AT": 0, "MT": 1 }, _prefix: true
  enum handle: { "右ハンドル": 0, "左ハンドル": 1 }, _prefix: true
end
