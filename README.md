# Car Sharing

# car-sharingのDB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|image_user|string||
### Association
- has_many :cars, dependent: :destroy
- has_many :reviews, dependent: :destroy
- has_many :likes, dependent: :destroy

## carsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|name|string||
|maker|string||
|price|integer||
|period|integer||
|gas|integer||
|type|integer||
|handle|integer||
|capa|integer||
|prefecture|string||
|city|string||
### Association
- belongs_to :user, optional: true
- has_many :images, dependent: :destroy
- has_many :reviews, dependent: :destroy
- has_many :likes, dependent: :destroy

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|car_id|integer|null: false, foreign_key: true|
|image_car|string||
### Association
- belongs_to :car, optional: true

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|car_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|rate|float||
|comment|text||
### Association
- belongs_to :user, optional: true
- belongs_to :car, optional: true

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|car_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user, optional: true
- belongs_to :car, optional: true