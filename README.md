# Tables
## messages
| カラム名     |     型        |  オプション   |
|:-----:|:--------:|:-------|
| body | text | notnull |
| image | string ||
| user_id |integer|t.references :user, foreign_key: true|
| group_id |integer|t.references :group, foreign_key: true|

## users
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name | string | notnull,unique,index |
| password | string | notnull |
| email | string | notnull,unique,index |
| group_id|integer|t.references :group, foreign_key: true|


## groups
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name       | string      | notnull,unique,index |

## group_users
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| user_id |integer| t.references :user, foreign_key: true|
| group_id|integer| t.references :group, foreign_key: true|


# Relation
## message
+ t.references :user

## user
+ t.references :group
+ has_many :messages

## group
+ has_many :users
+ has_many :messages

## group_users
+ has_many :messages
+ t.references :group
