# データベース

下記のようにブランチを切ってます

-  feature/db-challenge1<br>要件に従って概念設計・論理設計を行い、ER図を作成。<br>
Chatworkの一部機能を実現するためのテーブル設計。<br>
(ユーザー関連機能)<br>
(チャット関連機能)<br>
(タスク関連機能)

-  feature/db-challenge2<br>feature/db-challenge1で作成したER図を基に、物理設計とDDL文を作成

-  feature/db-challenge3<br>実行後の結果画面キャプチャと作成したSQL文をフォルダに格納


## ディレクトリ解説

```
quelcode-php
├── db ....................... 作成した課題の提出場所
├── mysql5.7
│   ├── mysql .................. 起動すると作られる。データ永続化用
│   ├── mysqlvolume ............ mysqlコンテナにマウントされる。ホストとのファイル受け渡し用
│   └── my.cnf ................. mysqlコンテナの設定ファイル
│  
├── .gitignore
├── docker-compose.yml
└── README.md
```

## データベース情報
MySQLバージョン 5.7.x

## phpMyAdmin接続方法

Dockerを立ち上げた後以下のアドレスにアクセスする

http://localhost:10081
