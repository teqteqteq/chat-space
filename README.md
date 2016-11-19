# Tables
## messages
| カラム名     |     型        |  オプション   |
|:-----:|:--------:|:-------|
| body | text | notnull |
| image | string ||
| user_id |references||
| group_id |references|||
##### assosiation_message
+ belongs_to :user

## users
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name | string | notnull,unique,index |
| password | string | notnull |
| email | string | notnull,unique,index |
| group_id|references|||
##### assosiation_user
+ belongs_to :group
+ has_many :messages

## groups
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name       | string      | notnull,unique,index |
##### assosiation_group
+ has_many :users
+ has_many :messages

## group_users
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| user_id |references||
| group_id|references|||
##### assosiation_group_user
+ has_many :messages
+ belongs_to :group
