# アプリケーション名  
## 「HOMETAI」  
# アプリケーション概要  

## URL  
 https://hometai.herokuapp.com
## テスト用アカウント  
- ニックネーム：test-4
- パスワード：444ddd  

## 利用方法  
1. トップ画面から頑張った内容などのフォームを入力いただくと褒め言葉出力画面へ遷移します。  
2.  こちらの画面からログイン/新規登録へお進みください。  
3.  ログイン後、カレンダーに残す内容を入力いただくとカレンダー表示画面に遷移いたします。  
4.  頑張ったことを保存すると、保存しただけカレンダーの該当日付欄に⭐️マークが出現します。  

## アプリケーションを作成した背景  
仕事や勉強、家事など誰に褒められなくても頑張る事や努力を続ける人の癒しになるようなアプリケーションがあればと考え作成しました。  
誰かに褒められる程でもない小さな努力や頑張りもこのアプリケーションを利用する事で目に見える成果として残すことができます。  

## 洗い出した要件定義  
以下URLからご確認ください。  

https://docs.google.com/spreadsheets/d/1pKsaUsKW7BcPHCB3LjuH2RhcTsHI08YA6Pgzm6aTRkQ/edit#gid=982722306
## 実装した機能についての画像やGIFおよびその説明   
- フォーム入力後褒め言葉が出力される  
https://gyazo.com/85de3c3d46fe7c3688ecd9c33c120557
- ログイン後、頑張ったことを保存する画面へ遷移する  
https://gyazo.com/1d1227465c440e99527949932dbdd1ac
- ログインしたユーザーはユーザーカレンダーを確認することができる  
https://gyazo.com/58216e79e8e9a8e5e46ef9e58adc1e59
- 頑張ったことを保存するとカレンダーの該当日付欄に⭐️マークが出現する  
https://gyazo.com/0ce108bb3caa51f6c0072469f2a8aef9



## 実装予定の機能 
- 頑張ったことを投稿する「Ganbatter機能」  
- カレンダーに保存した頑張った内容の詳細を確認できる「diary詳細機能」  
- 「ユーザー詳細表示機能」  
- 「ユーザー情報編集機能」  

# データベース設計  

![データベース設計](https://github.com/muttta/HOMETAI/blob/master/app/assets/images/hometai_DB.png)  


  
# 画面遷移図  
![画面遷移](https://github.com/muttta/HOMETAI/blob/master/app/assets/images/hometai_views.png)  

# 開発環境  
- フロントエンド：HTML/CSS  
- バックエンド：Ruby(ver 2.5.1)/Ruby on rails(6.0.0)  
- インフラ：MySQL  
- テキストエディタ：Visual Sutdio Code  
- タスク管理：GitHubプロジェクトボード  
