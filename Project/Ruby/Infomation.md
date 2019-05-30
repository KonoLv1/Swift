# Ruby

**日本語のテキストを入力したら、それをルビに直したテキストを出力するアプリを制作する。**
## 使用しているAPI

  **gooラボ 様**
  - https://labs.goo.ne.jp/api/jp/hiragana-translation/

## 開発期間

- 2019年5月24日～2019年5月30日

## 仕様

- IDEバージョン：Xcode 10.2
- 言語バージョン：Swift 5
- ターゲット：iOS 12.0

## アーキテクチャ

- 今回、MVC／MVVM／VIPERの設計思想の存在を知りましたが、完全な理解には及ばず導入には至りませんでした。<br>PEAKSより出版されている書籍を購入し勉強をすすめております。

## HTTP通信

- オープンソースライブラリである「Alamofire」を利用しています。

## Swift.file

- **Tutorial** : 初回起動時にチュートリアルを表示するビュー
- **ViewController** :　APIに送る文字を入力するビュー
- **Result** :　APIからの返却値を表示するビュー