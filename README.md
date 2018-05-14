# snapkin
snapkinは写真と日記、それと写真を取った場所を記録  
マップ上で今までどこに行ったのか俯瞰できる日記ウェブサービス

## 初期設定
#### 参考
* [システムのgemにrailsをインストールせずrails newする](http://qiita.com/youcune/items/222777415f00d19cccb4)
* [MacのRailsアプリでPostgreSQLを使う方法](http://qiita.com/yh2020/items/8be3087004d100fe752b)

## テーブル作成
```
bundle exec rake db:migrate  
  

# もしテーブル定義を変更している場合は作り直す
bundle exec rake db:migrate

Hoge
