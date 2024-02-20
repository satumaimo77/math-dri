# アプリケーション名
mathドリ

# アプリケーション概要
授業プリントを共有することができるメリット  
### 教員側のメリット
  ・授業プリントを共有することで、授業づくりの時間の軽減<br>
  ・授業内容を共有することで、教材研究の手助けになる<br>
  ・不登校生徒にプリントを配布しにいく必要がない<br>
### 生徒側のメリット
  ・家庭学習の教材として役立つ

# URL
https://math-dri.onrender.com

# テスト用アカウント
・Basic認証 ID: admin ,PASS: 2222<br>
・テスト用アカウント user.nickname: aaa ,メールアドレス: a@a ,Password: aaa111  

# 利用方法
### 授業内容の閲覧
  ・投稿内容の閲覧はすべてのユーザーが可能<br>
### 授業内容の投稿
  ・indexページからログインもしくは、新規登録を行う<br>
  ・indexページから投稿ページに遷移、必要事項を入力、投稿を行う


# このアプリケーションを作成した背景
  前職の教員時代に教材研究やクラブ指導に追われ、残業が100時間を超えることがあった。特に時間がかかったのが授業プリント作りであった。生徒にはたくさんの問題に取り組んでほしいと思うが、１枚の授業プリントの作成にも何時間と時間がかかるため、簡単な計算プリントなどはネットから拾ってこれないかと常日頃から考えていたが、中学校レベルの問題を取りまとめてくれいているサイトは少なかったため自分の力で作ってみようと考えた。

# 実装予定の機能
  ・コメント機能の実装 <br>
  ・userのフォロー機能 <br>
  ・投稿のお気に入り機能 <br>
  ・投稿のパス機能　　などを随時追加予定

# データベース設計
  [![Image from Gyazo](https://i.gyazo.com/894356105ef44399978be295a08b2ea8.png)](https://gyazo.com/894356105ef44399978be295a08b2ea8)

### usersテーブル

| Column | Type | Options  |
| ------ | ----- | --------- |
| email | string | null: false ,unique: true |
| encrypted_password | string | null: false |
| nickname | string | null: false |

### Association
- has_many :items

### itemsテーブル

| Column | Type | Options  |
| ------ | ----- | --------- |
| name | string | null: false |
| info | text |  |
| post_data | string | null:false |
| grade_id | integer | null: false |
| category_id | integer | null: false |
| user | references | null: false, foreign_key: true |

### Association
- belongs_to :user

# 画面遷移図
  [![Image from Gyazo](https://i.gyazo.com/7d6f8d26f63a2e6dd936617c8bcbfb61.png)](https://gyazo.com/7d6f8d26f63a2e6dd936617c8bcbfb61)