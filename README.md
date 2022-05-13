# README

## アプリケーション名
RIDE with ME

## アプリケーション概要
ライダー向けのSNS、コミュケーションツール

## URL

Basic認証
* username: 「admin」
* password: 「2222」
※ まだ制作途中です</br>
ダミーの写真で申し訳ございません

![84438e6deccc2fd97cc85e28684da8b3](https://user-images.githubusercontent.com/101072410/167564150-de34664f-0188-4045-bd67-c081df16da15.gif)

![688fcfc59a831500d57a5202cbd7de10](https://user-images.githubusercontent.com/101072410/167564316-f5cfab1f-2cdb-42b2-8a99-dced3206102c.gif)

![69cbcc1129c8a7e0580c45cfc9a7334c](https://user-images.githubusercontent.com/101072410/167564520-5dc752a9-ea4d-4c3e-942d-78e90c75f4c9.gif)

## アプリケーション作成背景
ツーリング中での思い出を簡単に共有できるアプリとして作成しました。
また県外へツーリングする際に参考になるような場所、お店などが検索できる（または質問できる）ような
機能を実装し、ルートを組む時に、幾つものサイトを検索しなくても情報が一つにまとまっているものがあれば便利だと思い作成に至りました。

## 実装予定の機能
* Garageスペースでのチャット
* ユーザー同士のMyfriend登録機能
* 投稿記事、友達検索機能

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/6f14ea40c6e0d1893f974b080d659c12.jpg)](https://gyazo.com/6f14ea40c6e0d1893f974b080d659c12)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/5062ec19b35afb091bb378b042cb57a1.png)](https://gyazo.com/5062ec19b35afb091bb378b042cb57a1)

## テーブル設計

## users

|  Colum  |  Type  |  Option  |
| ------- | ------ | ---------|
| nickname | string | null: false |
| email | string | null: false
| encrypted_password | string | null:false |
| genre_id | integer | null: false |
| bike_name | string |  |
| age_id | integer | null: false |
| gender_id | integer | null: false |
| prefecture_id |integer | null: false |
| personality_id | integer |  |

### Association 
* has_many :tourings
* has_many :comments
* has_many :garage_users
* has_many :garages, thorough: :garage_users
* has_many :messages



## tourings

|  Colum  |  Type  |  Option  |
| ------- | ------- | --------|
| title   | string  | null: false |
| weather_id | integer | null: false |
| mileage  | integer | null: false |
| record  | text  |  null: false |
| user | references | null: false, foreign_key: true |

### Association
* belongs_to :user
* has_many :comments



## comments

| Colum | Type | Option |
| ----- | ------ | ----- |
| text  | string | null: false |
| user  | references | null: false, foreign_key: true |
| touring | references | null:false, foreign_key:true |
### Association
* belongs_to :touring
* belongs_to :user



## garages

|  Colum  |  Type  | Option  |
| -------| -------| ---------|
| name  | string | null: false|

### Association
* has_many :garage_users
* has_many :users, through: :garage_users
* has_many :messages



## garage_users

|  Colum  | Type  | Option  |
| -------- | ------ | ------- |
| user | references | null: false, foreign_key: true
| garage | references | null: false, foreign_keys: true |

### Association
* belongs_to :user
* belongs_to :garage



## messages

| Colum | Type  | Option |
| ----- | ------ | ------- |
| content | string | null: false |
| user | references | null: false, foreign_key: true |
| garage | references | null: false, foreign_key: true |

### Association
* belongs_to :user
* belongs_to :garage

## 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code
