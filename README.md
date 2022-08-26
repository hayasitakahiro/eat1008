# README
# アプリケーション名  
eat1008 
# アプリケーション概要  
1日1日の食べたいものを写真付きで記録し週１のなんでも食べられる日に後悔のないチートデイを実行することができる  
  # 利用方法  
1.トップページからユーザー新規登録を行う
2.投稿ボタンから[タイトル][画像]を入力し、投稿する
タイトル：食べたい食事のタイトル
画像：食べたい食事の画像
 3.チートデイが終了したら削除ボタンを押す
# アプリケーションを作成した背景  
私の趣味が筋トレであることもあり、食事管理に関するアプリ開発を行いました。
トレーニング中の食事制限では、週に1日だけ制限なく何でも食べてよい「チートデイ」と呼ばれる日を設けることで暴飲暴食を防げます。
問題点としては、食べたいと思っていた物が曖昧になってしまい、気分に任せて食べてしまいカロリーの過剰摂取をしてしまうことです。
これを改善するために、アプリに記録しておくことで暴飲暴食を防ぐことができます。
また、トレーニング中以外にも病気療養やダイエット目的の方にも、健康意識向上という観点からアプリの活用をしてもらいたいと考えています。 
# データベース設計  
[![Image from Gyazo](https://i.gyazo.com/345008707f358ce0aed699c910d8aa41.png)](https://gyazo.com/345008707f358ce0aed699c910d8aa41)  
# 画面遷移図  
[![Image from Gyazo](https://i.gyazo.com/1ebff3d3a9939619c0e9d6e67ab54e39.png)](https://gyazo.com/1ebff3d3a9939619c0e9d6e67ab54e39)  

# cheat テーブル  
| Column            | Type   | Options     |
| ------------------| ------ | ----------- |
| name              | string | null: false |  
| user              |references｜ null: false,foreign_key: true |
# Association  
belongs_to :user  
# users テーブル  
| Column            | Type   | Options     |
| ------------------| ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |  

# Association  
has_many :cheats

# 開発環境  
HTML.CSS.RUBY.テキストエディタ  
# ローカルでの動作方法  
新規登録後、タイトル、画像を投稿し6枚投稿したら削除する  
# 工夫したポイント　  
あえてヘッダー、フッターを作らずに画像をトップページ一面にすることで
オリジナル感を出しています  
アプリのURL : https://eat1008.herokuapp.com  
BASIC認証  
ログインID、pass  
ID : admin  
PASS : 2222





