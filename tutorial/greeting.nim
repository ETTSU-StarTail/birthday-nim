# This is a comment
echo "What's your name"
# var は一般的な変更のできる変数を定義する
# const は定数でコンパイル時に決定している値かどうか評価される
# let は再代入できない変数を定義する
let name: string = readLine(stdin)

let
    kouiu: string = "こういう"
    hensuu: string = "変数"
    teigi: string = "定義"
    ga: string = "が"
    dekiru: string = "できる"

echo "Hi, ", name, "!"

echo kouiu, hensuu, teigi, ga, dekiru

#[
    複数行コメント
    Yeah!
    #[
        ネスト出来るってさ
    ]#
]#