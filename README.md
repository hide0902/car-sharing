# Car Sharing

## App URL
http://18.180.142.54/

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
- has_many :requests, dependent: :destroy
- has_many :messages

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
- has_many :requests, dependent: :destroy

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

## requestsテーブル
|Column|Type|Options|
|------|----|-------|
|car_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|start_rent|string||
|end_rent|string||
|place|string||
|text|text||
|tel|string||
|name|string||
### Association
- belongs_to :user, optional: true
- belongs_to :car, optional: true
- has_many :messages

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|request_id|integer|null: false, foreign_key: true|
|comment|text||
|image|string||
### Association
- belongs_to :request
- belongs_to :user