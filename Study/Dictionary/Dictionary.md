# 辞書の基本文法

## 辞書を作成する

**user**という名前の辞書に「年齢」「体重」「身長」を格納する。


```swift
let user:[String:Int] = [
	"age":26,
	"weight":65,
	"height":168
]
```
**age**の中身を出力する。

```swift
print(user["age"])

```

## 辞書を更新する

**LV**を１から２に変更する。

```swift
var date:[String:Int] = [
	"id":1000,
	"lv":1,
	"coin":114514
]

date["lv"] = 2
print(date["lv"])
```


## 辞書に追加する

**point**を追加する。

```swift
var date:[String:Int] = [
	"id":1000,
	"lv":1,
	"coin":114514
]

date["point"] = 2
print(date["point"])
```

## 辞書から取り出した値はオプショナル（Optional）となる

### 前提知識として **nil** を理解する

nil（ニル）は何もないという意味　<br>

バグを発生させる要因となるのでオプショナルでnilをダイレクトに伝えないようにしている。


