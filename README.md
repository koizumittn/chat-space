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

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
