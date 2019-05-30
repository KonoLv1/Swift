### Ruby

## 日本語のテキストを入力したら、それをルビに直したテキストを出力するアプリを制作する。

# 使用しているAPI

  **gooラボ 様**
  - https://labs.goo.ne.jp/api/jp/hiragana-translation/

# 仕様

- IDEバージョン：Xcode 10.2
- 言語バージョン：Swift 5
- ターゲット：iOS 12.0

# HTTP通信

- オープンソースライブラリである「Alamofire」を利用しています。

# Swift.file

- **Tutorial** : 初回起動時にチュートリアルを表示するビュー
- **ViewController** :　APIに送る文字を入力するビュー
- **Result** :　APIからの返却値を表示するビュー