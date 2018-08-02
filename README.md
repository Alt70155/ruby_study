# ruby_study
というわけでrubyの勉強＋オブジェクト指向＋データ構造の勉強です。  
rubyが役にたつかわかりませんが、データ構造とオブジェクト指向は  
まだまだ知っておいても損はない知識であり、国家試験でも出題されるため勉強内容に選びました。

## 今回の課題
今回の課題は、**連結リストを作る**というものです。

## 前準備
前準備として必要なツール等を導入しておきましょう
```shell
cd 現在のディレクトリ
# bundlerが入っていない場合は以下のコマンドで導入しましょう
gem install bundler

# 続いてrspec（テストツール）を入れましょう
bundle install

# テストの実行方法
rspec
```

## 仕様書

```ruby
# length分の連結リストオブジェクトの作成
# 戻り値はlinked_listの先頭
linked_list = LinkedList.new(length);

# 以下のコードでindexに格納されたセル内のitemを取得する
linked_list.get(index)

# 以下のコードでitemを格納したセルを連結リストの末尾に追加する
linked_list.add(item)

# 以下のコードでitemが含まれたセルを連結リストから削除
linked_list.remove(item)

# 以下のコードで連結リスト先頭のセル内のitemを取得する
linked_list.first()

# 以下のコードで連結リスト末尾のセル内のitemを取得する
linked_list.last()

# 以下のコードで連結リストの長さを取得する
linked_list.length()

# 以下のコードでitemがlistに含まれているかをtrue or falseで取得する
linked_list.contains(item)
```

## ポイント
連結リストはセルで構築されているで、  
内部クラスを用いて実装してみてください。 
テストツールはrspecというものを利用しています。
