{-

差が1の等差数列の和を素朴な再帰で実現すると以下のようになった
-}

-- my_soap :: Integer -> Integer
-- my_soap 0 = 0
-- my_soap n = my_soap (n-1) + n


-- プログラミング言語の内部をよく知っている人は、何度も関数を呼び出すのでスタックが溢れてしまわないか心配だろう。
-- 実際、この手の関数はスタックが溢れてしまう可能性がある。


--　末尾再帰(tail recursion)という形に直すと、スタックが溢れなくなる。

-- 末尾再帰の形をした関数とは、分岐の末端の最後で自分自身を呼び出す関数のことである。
-- 上記の関数は末尾再帰ではない。以下のように二項演算子を関数になおして前にだすと、よく分かる。

-- my_soap :: Integer -> Integer
-- my_soap 0 = 0
-- my_soap n = (+) (my_soap (n-1)) n

-- soapが最後に呼び出すのは(+)であるから末尾再帰ではない。

-- ループでできることを実装している再帰関数は、「引数を増やすことで末尾再帰に直せる」

my_soap_iter :: Integer -> Integer
my_soap_iter x = my_soap_iter' x 0

my_soap_iter' :: Integer -> Integer -> Integer
my_soap_iter' 0 acc = acc
my_soap_iter' n acc = my_soap_iter' (n-1) (acc + n)
