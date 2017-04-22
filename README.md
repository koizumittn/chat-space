== README

# DB設計


## users table
|Column|Type|Options|
|---|---|---|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|※1|timestamps||

### Association
- has_many :groups, through: :user_groups
- has_many :messages

## groups table
|Column|Type|Options|
|---|---|---|
|name|string|null: false|
|name|string|null: false|
|※1|timestamps||

### Association
- has_many :users, through: :user_groups
- has_many :messages

※1: created_atおよびupdated_atカラム(どちらもdatetime型)を持つ。
