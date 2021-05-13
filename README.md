# アプリケーション名: Easy Reserve

URL: 


## テスト用アカウント

- ユーザー名（投稿者）: toukou
- パスワード（投稿者）: 000aaa
- ユーザー名（予約者）: yoyaku
- パスワード（予約者）: 111aaa


## アプリケーション概要

イベント主催者が簡単に告知と予約管理ができるようにアプリを開発。簡単に予約ができることで、予約数を増やすことができる。また、従来の予約アプリよりもSNSに寄せることで気軽に予約できたり、ユーザーが気軽にイベントを企画できるようになる。


## 要件定義

- ユーザーなら誰でも簡単にイベント情報の投稿ができる。
- プロフィールを登録しておけば、人数を入力して送信するだけでイベントの予約ができる。
- 誰でもイベント情報の一覧と詳細を見ることができる。
- キーワード・ジャンル・日時のどれかで、イベント情報の検索ができる。
- ユーザーならイベント情報にコメントができる。
- ユーザー詳細で本人のみ、自分の予約したイベントの一覧を見ることができる。
- ユーザーは気になるイベント情報をお気に入りに入れることができ、ユーザー詳細ページで本人のみが一覧を見ることができる。
- イベント情報投稿者は予約の一覧を管理できる。
- ユーザー詳細でプロフィールとこれまでのイベント情報の一覧を見ることができる。


## 利用方法・機能の特徴

トップページから新規登録、またはログインをする。
イベントを投稿する場合は、投稿ボタンから投稿する。
予約をする場合は、イベント詳細ページの予約フォームに人数を入力し送信する。


## 今後の追加予定機能



## ローカルでの動作方法



# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| user_name          | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_one :profile
- has_many :events
- has_many :reserves
- has_many :comments
- has_many :favorites

## profiles テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| nick_name       | string     |                                |
| last_name       | string     | null: false                    |
| first_name      | string     | null: false                    |
| last_name_kana  | string     | null: false                    |
| first_name_kana | string     | null: false                    |
| phone_num       | string     | null: false                    |
| biography       | string     |                                |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## events テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| event_name  | string     | null: false                    |
| date        | date       | null: false                    |
| open_time   | time       | null: false                    |
| start_time  | time       | null: false                    |
| place       | string     | null: false                    |
| price_adv   | integer    | null: false                    |
| price_door  | integer    | null: false                    |
| capacity    | integer    | null: false                    |
| genre_id    | integer    | null: false                    |
| event_text  | text       |                                |
| precautions | text       |                                |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :reserves
- has_many :comments
- has_many :favorites

## reserves テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| members_man   | integer    | null: false                    |
| members_woman | integer    | null: false                    |
| reserve_text  | text       |                                |
| event         | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :event

## comments テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| comment_text  | text       | null: false                    |
| parent_id     | integer    |                                |
| event         | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :event

## favorites テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| event         | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :event









