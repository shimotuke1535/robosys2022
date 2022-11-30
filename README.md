# robosys2022
ロボットシステム学の練習リポジトリ
![test](https://github.com/shimotuke1535/robosys2022/actions/workflows/test.yml/badge.svg)
## 概要
入力された数値の合計を出力するプログラムです
<br>
## 実行方法
①このリポジトリを任意のレジストリに`git clone`コマンドを用いてダウンロードする
<br>
こちらをコピー・アンド・ペーストでもできます↓
```html:cmd
git clone https://github.com/shimotuke1535/robosys2022.git
```
<br>
②ダウンロードしたリポジトリの中にある`plus`を実行する・・・
```html:cmd
./plus
```
で起動します
<br>
## 操作方法
計算する数値を入力します（この際整数でも実数でも構いません）
<br>
`f`を入力された際に今まで入力された数値の和が出力されます
<br>
スペースや文字が入力された際は異常終了を避けるために自動終了します
<br>
## 実行例
```html:Operation example
$ ./plus 
1
2
3
4
5
f
15
$ ./plus 
1
2
3
e 
ERROR!!!
```
## 実行環境
Python3.8.10
<br>
Ubuntu20.04
<br>
## 開発環境
VSCode1.73.1 for Linux
<br>
## テスト環境
Python 3.7~3.10
<br>
## ライセンス表示
This Softwere Package allowed Redistribution and Use by GPL 3.0
<br>
©2022 ShimonoMao
