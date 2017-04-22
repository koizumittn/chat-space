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

## user_groups table
|Column|Type|Options|
|---|---|---|
|user※2|references|null: false, foreign_key: true|
|group※3|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

## messages table
|Column|Type|Options|
|---|---|---|
|text|string|null: false|
|user※2|references|false, foreign_key: true|
|group※3|references|false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

※1: created_atおよびupdated_atカラム(どちらもdatetime型)を持つ。  
※2: マイグレーションファイルではこのように記述するが、実際のカラム名はuser_idとなる。  
※3: マイグレーションファイルではこのように記述するが、実際のカラム名はgroup_idとなる。  
