boundioV2 Ruby Gem
====
boundioV2 Ruby Gem にはプッシュ音認識機能が追加されています。<br />
既存の「boundio Ruby Gem」のboundio ver2対応バージョンです。

API
--------
以下のAPIに対応しています。

* call
* status
* file/post

利用方法
--------

boundioV2 gem インストール
$gem install boundioV2
 
// 認証情報設定
$export BOUNDIOV2_USER_SERIAL_ID=userSerialId # ユーザーシリアルID
$export BOUNDIOV2_API_KEY=appId # アプリケーションキー
$export BOUNDIOV2_USER_KEY=authKey # ユーザー認証キー

// call
$ boundioV2 call --tel-to=09012345678 --cast='file(000001)'
1234 => 通話IDが返却値として表示される

// プッシュ音認識機能の利用方法
$ boundioV2 call --tel-to=09012345678 --cast='file(000001)%%gather(30,4)%%file(000002)'
1234 => 通話IDが返却値として表示される