== README

# DB設計


## users table
|Column|Type|Options|
|---|---|---|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|※1|timestamps||

※1: created_atおよびupdated_atカラム(どちらもdatetime型)を持つ。

### Association
- has_many :groups, through: :user_groups
- has_many :messages
