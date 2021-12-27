# README

## users テーブル

| Column              | Type    | Options                        |
| ------------------- | ------- | ------------------------------ |
| nickname            | string  | null: false                    |
| birthday            | date    |                                |
| encrypted_password  | string  | null: false                    |

### Association
- has_many :diaries
- has_many :ganbatters


## diary テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false,foreign_key: true  |
| comment      | text       |                                |
| category_id  | integer    | null: false                    |
| feeling_id   | integer    | null: false                    |
| day          | date       | null: false                    |

### Association
- belongs_to  :user


## ganbatter テーブル

| Column        | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| user          | references | null: false,foreign_key: true |
| category_id   | integer    | null: false                   |
| feeling_id    | integer    | null: false                   |
| text          | text       | null: false                   |

### Association
- belongs_to :user
