# README

# 🌏 アプリ名
<街のお散歩アプリ> おさんぽ_Goo

公園・遊歩道など身近にあるさんぽスポットをテーマとし、
それらのスポットを他者と共有するためのアプリケーション。
Gooは①グッドの意、②go行こうの意、③ぐーとお腹がなるまでのんびり歩こう！の意


# 👟概要
あなたは、歩くことが体に与える影響の大きさを知っているだろうか。
病気の予防や生活週間の改善だけでなく、ストレスの軽減や脳の活性化など、
どうやらメンタルとも深い関係があるのだとか。

このアプリケーションは、そんな健康を考え歩く習慣を身につけたいと思う人や、
散歩が好きで、自分の知らない様々なところを歩いてみたいと思う全ての人へ向けたものです。

# 🖥本番環境(App URL)


# 📗利用方法

## 👤ユーザーに関するもの
☆トップページから右上「新規登録・ログインボタン」をクリック
  →新規登録・ログイン後、再びトップページへ遷移

☆トップページから右上「新規登録・ログインボタン」をクリック
  →新規登録・ログイン後、再びトップページへ遷移

☆ユーザー名をクリック
  →ユーザー詳細表示ページへ遷移

☆ユーザー詳細表示ページの「編集ボタン」をクリック (ログイン中、アカウント本人であれば可能)
  →ユーザー情報編集ページへ遷移

☆ユーザー情報編集ページにおいて、必要事項を編集した後「更新ボタン」をクリック
  →ユーザー詳細表示ページへ遷移(その後、再ログインが必要)


## 🗒投稿に関するもの
☆新規投稿は右上「新規投稿ボタン」をクリック
  →新規投稿ページへ遷移

☆必要事項を全て記入し、「投稿ボタン」をクリック
  →投稿完了後、トップページへ遷移

☆投稿写真をクリック
  →投稿詳細表示ページへ遷移

☆投稿詳細表示ページの「編集ボタン」をクリック (ログイン中、アカウント本人であれば可能)
  →投稿編集ページへ遷移

☆投稿編集ページにおいて、必要事項を編集した後「更新ボタン」をクリック
  →トップページへ遷移

☆投稿詳細表示ページの「削除ボタン」をクリック (ログイン中、アカウント本人であれば可能)
  →トップページへ遷移


## 📝コメントに関するもの
☆ 投稿詳細画面からコメントを記入後「送信ボタン」をクリック
  →再び投稿詳細画面に遷移(コメントの表示を確認できる）
  
# ❓作成背景 どんな課題や不便なことを解決するためにこのアプリを作ったか
主に、働く20~50代の終業後の時間や、休日の時間を有効活用させたいという目的のために作成。
 | -------------------------------------------------------------------------- |
 | ニーズ                                                                      |
 |・運動習慣をつけるきっかけが欲しい。気軽に散歩やジョギングができる公園やルートが知りたい。 |
 |・気持ちの良いところに、一人でプラッと出かけたい。                                  |
 |・ペットが好きな人や散歩・ランニングなどが好きな人と繋がりたい。情報共有をしたい。        |
 | 課題                                                                        |
 |・インターネットから行きたいところを広く探すことに、時間と手間をあまりかけたくない。      |
 |・大きなサイトに載らない穴場のようなスポットは、地元の人でなければわからない。           |
 |・商品の画像や説明文だけでは情報が不十分だったとき、投稿者に直接質問したい。             |
 | 課題を解決する実装内容                                                         |
 |・紹介場所の写真や情報を閲覧・共有できる機能                                        |
 |・ユーザーについての情報も確認できる機能                                           |
 |・他者と繋がり、質問やコメントを入力できる機能                                      |


# 🎁機能一覧
| 機能              | 概要                                               |
| ---------------- | -------------------------------------------------- |
| ユーザー管理機能    | 新規登録・ログイン・ログアウトが可能                     |
| ユーザー詳細表示機能 | 各ユーザーのプロフィール・投稿一覧が閲覧可能              |
| ユーザー情報編集機能 | ログイン中、アカウント本人であればプロフィール編集が可能    |
| 投稿機能           | 画像付きで日記投稿が可能                               |
| 投稿詳細表示機能    | 各投稿詳細が詳細ページで閲覧可能                         |
| 投稿編集・削除機能   | 投稿者本人のみ投稿編集・削除が可能                       |
| コメント機能        | 投稿詳細ページからコメントが可能                        |
| キーワード検索機能   | キーワードを入力すると、該当するタイトルを持つ投稿が検索可能 |

(コメントは投稿に対しての感想や質問を受け付けるためのものである）
LIKE機能	各投稿へ非同期通信でLIKEをつけることが可能 非同期通信でLIKE削除も可


# 💻ローカルでの動作方法
$ git clone https://github.com/liz539z/global-day.git 
$ cd global-day 
$ bundle install 
$ rails db:create 
$ rails db:migrate 
$ rails s 
👉 http://localhost:3000

$ cd projects
$ cd original-app 
$ rails s 
👉 http://localhost:3000


# 🌟工夫したポイント
  ・Active hashを使って、投稿内容作成の簡略化を狙った。

  ・キーワード検索で、自分が知りたい投稿にアクセスしやすいようにした。

  ・ユーザー情報も投稿内容も変化する可能性のあるものには、編集機能をつけた。


# 🛠開発環境
VScode
Ruby 2.6.5
Rails 6.0.3.4
mysql2 0.5.3
JavaScript
gem 3.0.3
heroku 7.46.0

Ruby
Ruby on Rails
MySQL
GitHub
Heroku
Visual Studio Code


# 💪課題や今後実装したい機能
・コメントの即時出力機能
・複数枚写真投稿機能


# 🔩DB設計
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


## favorites テーブル
| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| product   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :product
