# README

＜街のお散歩アプリ＞ おさんぽ_Goo
  公園・遊歩道など身近にあるさんぽスポットをテーマとし、それらのスポットを他者と共有するためのアプリケーション。
  Gooは①グッドの意、②go行こうの意、③ぐーとお腹がなるまでのんびり歩こう！の意



図




* ペルソナ
  働き盛りの20~50代

* 職業
  職業は、一般的な会社員で、ジャンルは設定しない。
  終業後の時間や、休日の時間を有効活用したいと考えている。

* 趣味
  ・ダイエットや運動
  ・ペットの散歩

* 日頃の生活
  業務が忙しい時は、なかなか体を動かすことができず、疲労が溜まりがちになる。
  １日を有意義に過ごしたいがジムに行くのは少し気が引けてしまうし、癒しが欲しいと感じたりもする。
  近所を散歩したり、ランニングしたりしようと思うが、いつもと違うところにも行ってみたい。
  ペットが好きな人や散歩・ランニングなどが好きな人と繋がりたい。

* 解決したい課題
  気軽に散歩やジョギングができる公園やローカルルートを知りたい。
  共通の趣味を持つ人と繋がり、情報を共有したい。

* なぜその課題解決が必要なのか
  普段忙しいと、その場所を検索して、選ぶことに時間と手間がかかるから。
  商品の画像や説明文だけでは情報が不十分だったとき、投稿者に直接質問できるから。

* 課題を解決する実装の内容
  ・その場所の写真や情報を閲覧・共有できる機能
  ・他者と繋がり、質問やコメントを入力できる機能

* 実装の機能

| 項目      | 機能                              |
| -------- | --------------------------------- |
| 優先順位  | ①ユーザー機能 ②投稿機能 ③コメント機能 |
| 機能      | ①ユーザーの新規登録・ログイン・管理機能 |
|          | ②メッセージの投稿・編集・削除・管理機能 |
|          | ③メッセージへのコメント機能           |
| 目的      |
|          |
| 詳細      |
|          |
| ストーリー |
|          |

ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー

* テーブル設計
## users テーブル
| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| nickname   | string | null: false |
| profile    | text   | null: false |

### Association
- has_many :comments
- has_many :products


## comments テーブル
| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| product   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :product


## products テーブル
| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| title           | string     | null: false                    |
| image           |            |                                |
| category_id     | integer    | null: false                    |
| description     | text       | null: false                    |
| prefecture_id   | integer    | null: false                    |
| municipality    | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments


* 画面遷移図




* 工夫したこと




* 大変だったこと
