#[
    fizzbuzz を作るよ

    入力:
        0 < x の整数

    出力:
        入力された整数まで 1 から数え上げていく。ただし、下記の場合は数え上げる代わりに文字列を表示する

        - 15 の倍数: FizzBuzz
        - 5 の倍数: Buzz
        - 3 の倍数: Fizz
]#
#[
    感想:
        セマンティックなコードが書けそう。構文についても意味も分かり易いと思った。

        また、他の言語とは名前が違ったりする部分はあるが直感的な名前になっていると感じた。
        関数にあたるプロシージャは proc とされていて、関数ってなんだよ派も落ち着ける感じ。

        さらに、サクサク書く為の工夫がされていると感じた。
        Java などの言語にある `switch` に当たる `case~of` ではマッチング条件をカンマ区切りで書けたりする。
        （書いたことないだけで書いて良い仕様かもしれない）

        countup などのイテレータ（iterator で proc のように定義）は for ループでのみ呼べる。
        つまり、反復処理以外で使われることを想定していない処理を定義できる。

        Python の影響についてもインデントもそうだが、`discard` という何もしない関数があり `pass` から来てそうだなと。
]#

from std/strutils import parseInt

try:
    # input number
    echo "Please input number(0 < x)"
    let inputValue: string = readLine(stdin)
    let inputNumber: int = parseInt(inputValue)

    echo "--------"

    # countup to input number from 0
    for i in 1 .. inputNumber:
        if i mod 15 == 0:
            echo "FizzBuzz"
        elif i mod 3 == 0:
            echo "Fizz"
        elif i mod 5 == 0:
            echo "Buzz"
        else:
            echo i
except:
    echo "Input value is not a number."
