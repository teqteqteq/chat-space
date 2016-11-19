# Tables
## messages
| カラム名     |     型        |  オプション   |
|:-----:|:--------:|:-------|
| body | text | notnull |
| image | string ||
| user_id |integer||
| group_id |integer|||

## users
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name | string | notnull,unique,index |
| password | string | notnull |
| email | string | notnull,unique,index |
|group_id|integer|||


## groups
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name       | string      | notnull,unique,index |

# Relation
## message
+ belongs_to :user

## user
+ belongs_to :group
+ has_many :messages

## group
+ has_many :users
