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
+ belongs_to :group

## users
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name | string | notnull,unique,index |
| password | string | notnull |
| email | string | notnull,unique,index |
| group_id|references|||
##### assosiation_user
+ has_many :messages
+ has_many :group_users
+ has_many :groups, through: :group_users

## groups
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| name       | string      | notnull,unique,index |
##### assosiation_group
+ has_many :messages
+ has_many :group_users
+ has_many :users through: :group_users


## group_users
| カラム名     |     型        |  オプション   |
|:-----------:|:------------:|:------------|
| user_id |references||
| group_id|references|||
##### assosiation_group_user
+ belongs_to :user
+ belongs_to :group
