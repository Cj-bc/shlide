English: please see README.md for english


# shlide

*shlide*は、CLI用のプレゼンツールです。


# bash-oo-frameworkを使っています。

このプロジェクトでは、[niieani/bash-oo-framework](https://github.com/niieani/bash-oo-framework)を使用しています。


# usage

使用できるコマンドは以下の通りです:

| コマンド | 説明 |
|:-:|:-:|
| `shlide start [directory|tar_file]` | 指定されたディレクトリ(tarファイル)内にあるプレゼンを開始します |
| `shlide info [directory|tar_file]` | 指定したプレゼンの情報を表示します(例: タイトル、枚数、日時など) |


## 起動中の操作

いくつかのキーが割り当てられています:

| key | description |
|:-:|:-:|
| <space>/l | 次のスライド |
| `h` | 前のスライド |
| `q` | プレゼンを終了する |

# プレゼンの作成方法

## 1. スライドを作成する

使用するスライドを作る必要があります。
様々なプラグインがあるため、vimでの作成を(個人的には)お勧めします
(他のエディタについて知らないだけではあります)


### vim向けのお勧めプラグイン

  これらのプラグインがあると、書くスピード(特にレイアウトするスピード)が変わる気がします。

  * [vim-scripts/drawit](https://github.com/vim-scripts/drawit)
  * [gyim/vim-boxdraw](https://github.com/gyim/vim-boxdraw)

  そして、表など作成したりするのであればこれも役にたつと思います。

  * [thoughtstream/damian-conway-s-vim-setup -- dragvisuals.vim](https://github.com/thoughtstream/damian-conway-s-vim-setup/blob/master/plugin/dragvisuals.vim)

### スライドのルール

スライドは1枚目から順に001.md, 002.md, 003.md, ...というように名付けてください。(後に名前を変えられるような変更も行うかもしれません)
必ず一つのディレクトリ下にまとめてください。
*shlide*は000から順番にスライドを読んでいきます。

`.tar`形式で保存することもできます。
その場合は、スライドの中身のみをアーカイブ化してください
(例: スライドが`presentation/00{1,2,3,4}.md`とある場合、`presentation`ディレクトリに入ってから中身を`tar`してください。)


## 2. プレゼンだ！

後はあなたの話術でプレゼンするだけです！！
