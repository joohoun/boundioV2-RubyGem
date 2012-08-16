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

boundioV2 gem インストール<br />
$gem install boundioV2<br />

// 認証情報設定<br />
$export BOUNDIOV2_USER_SERIAL_ID=userSerialId # ユーザーシリアルID<br />
$export BOUNDIOV2_API_KEY=appId # アプリケーションキー<br />
$export BOUNDIOV2_USER_KEY=authKey # ユーザー認証キー<br />

// call<br />
$ boundioV2 call --tel-to=09012345678 --cast='file(000001)'<br />
1234 => 通話IDが返却値として表示される<br />

// プッシュ音認識機能の利用方法<br />
$ boundioV2 call --tel-to=09012345678 --cast='file(000001)%%gather(30,4)%%file(000002)'<br />
1234 => 通話IDが返却値として表示される<br />