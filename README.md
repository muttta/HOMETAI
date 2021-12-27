# README

## users テーブル

| Column              | Type    | Options                        |
| ------------------- | ------- | ------------------------------ |
| nickname            | string  | null: false                    |
| birthday            | date    |                                |
| encrypted_password  | string  | null: false                    |

### Association
- has_many :calendars
- has_many :ganbatters


## calendar テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| user                | references | null: false,foreign_key: true  |
| diary               | references | null: false,foreign_key: true  |

### Association
- belongs_to :user
- has_many :diaries


## diary テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| calendar     | references | null: false, foreign_key: true |
| comment      | text       |                                |
| category_id  | integer    | null: false                    |
| feeling_id   | integer    | null: false                    |
| day          | date       | null: false                    |

### Association
- belongs_to  :calender


## ganbatter テーブル

| Column        | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| user          | references | null: false,foreign_key: true |
| category_id   | integer    | null: false                   |
| feeling_id    | integer    | null: false                   |
| text          | text       | null: false                   |

### Association
- belongs_to :user
