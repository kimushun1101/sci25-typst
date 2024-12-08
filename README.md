![Compile workflow](https://github.com/kimushun1101/sci25-typst/actions/workflows/compile.yml/badge.svg)
![Deploy workflow](https://github.com/kimushun1101/sci25-typst/actions/workflows/release.yml/badge.svg)
![Pages workflow](https://github.com/kimushun1101/sci25-typst/actions/workflows/gh-pages.yml/badge.svg)

# sci25-typst

**このソースコードはTypst version 0.12で作成しました．**  
[第69回 システム制御情報学会 研究発表講演会](https://sci25.iscie.or.jp/)の原稿を Typst で書くときのテンプレートです．  
Typst の概要については https://typst.app/docs/tutorial/writing-in-typst/ をご覧ください．  

[vscode-typst.webm](https://github.com/kimushun1101/typst-jp-conf-template/assets/13430937/f227b85b-0266-417b-a24a-54f28f9a71b8)


| ファイル     | 意味                           |
| ---------- | ------------------------------ |
| main.typ   | 原稿雛形の Typst ソースコード      |
| sample.typ | サンプルの Typst ソースコード      |
| lib.typ    | 体裁を整える Typst ソースコード    |
| sci.csl    | 参考文献の体裁を整える CSL ファイル |
| refs.*     | 参考文献ファイル                  |


| ディレクトリ    | 含まれるファイルの種類          |
| ------------- | --------------------------- |
| figs          | 論文に使用する画像ファイル      |
| .vscode       | VS Code用の設定ファイル       |


## 使用方法
GitHub に慣れていない方は，GitHub ページの `<>Code▼` から `Download ZIP` して展開してください．  
慣れている方は，`git clone` したり `use this template` したり，適宜扱ってください．

### VS Code を使用する場合
1. [VS Code](https://code.visualstudio.com/) をインストール．
2. VS Code で `File`→`Open Folder` でこのフォルダーを開く．  
3. 推奨拡張機能をインストール．  
  Extensions (`Ctrl` + `Shift` + `X`) の `Search Extensions in Marketplace` のテキストボックスに `@recommended` と入力すると表示される，以下の拡張機能をinstall をクリック．  
    - [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist)
4. Explorer (`Ctrl` + `Shift` + `E`) から `sample.typ` を開いた状態で，画面右上にある Typst Preview の方の ![view-icon](https://github.com/kimushun1101/typst-jp-conf-template/assets/13430937/a44c52cb-d23a-4fdb-ac9f-dc2b47deb40a) アイコンをクリック (
 `Ctrl` + `K` のあと `V`) でプレビューを表示．[トップにある動画](#sci25-typst) の操作です．
5. `Ctrl` + `S` で PDF を生成．

### 他のエディターで執筆する場合

筆者は試せていませんが，他のエディターでも同様の拡張機能はありそうです．  
また，Typst のインストールおよびコンパイルはコマンドラインでも行えます．  
インストール方法は OS ごとに異なります．
- Windows
  PowerShell を開き以下のコマンドを入力する．
  ```powershell
  winget install --id Typst.Typst
  ```
  `winget` コマンドが有効でない場合には，Microsoft Store から [アプリインストーラー](https://apps.microsoft.com/detail/9nblggh4nns1) をインストールすると使えるようになります．
- Mac
  [Homebrew](https://brew.sh/ja/) を導入して，以下のコマンドを入力する．
  ```sh
  brew install typst
  ```
- Rust を通してインストール
  Ubuntu の場合などはこの方法をオススメします．
  [Rust](https://www.rust-lang.org/ja/tools/install) をインストールして，以下のコマンドを入力する．
  ```sh
  cargo install --locked typst-cli
  ```

コマンドによるコンパイル手順は以下のとおりです．
1. [Typst](https://typst.app/) をインストール．
2. PowerShell やターミナルで `sample.typ` のあるディレクトリに移り，以下のコマンドで `sample.pdf` を生成．
   ```
   typst compile sample.typ
   ```

## ライセンス
参考元にならってライセンスを付与しています．  
Typst ファイル : MIT No Attribution  
CSL ファイル : Creative Commons Attribution-ShareAlike 3.0 License  
