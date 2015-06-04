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

-- my_soap_iter :: Integer -> Integer
-- my_soap_iter x = my_soap_iter' x 0

-- my_soap_iter' :: Integer -> Integer -> Integer
-- my_soap_iter' 0 acc = acc
-- my_soap_iter' n acc = my_soap_iter' (n-1) (acc + n)

-- 作るべき関数の型は Integer -> Integer型であるが、末尾再帰にするためには、一つ引数が増えて方が変わる。
-- 関数を２つ容易することで、この問題を解決している。

-- 増やされた引数は、「蓄積変数」(accumlator)と呼ばれる。
-- 上記の例ではmy_soap_iter' のaccがそれに当たる。
-- 蓄積変数に結果を蓄えていき、最後にそれを返す。


-- トップレベルの関数が増えることを避けるために、末尾先のためのローカル関数を使う。
-- ローカル関数の名前はiterとする。

my_soap_iter :: Integer -> Integer
my_soap_iter x = iter x 0
  where
    iter :: Integer -> Integer -> Integer
    iter 0 acc = acc
    iter n acc = iter (n-1)(acc + n)

-- 変換の様式をまとめよう。

-- - 蓄積変数を１つ増やす
-- オリジナルの基底部が返す値は、蓄積変数の初期値にする
-- iter の基底部では蓄積変数を返す
-- iter の再帰部では蓄積変数に対して仕事をする。

-- 関数型言語を名乗るプログラミング言語であれば、再帰の末尾呼び出しは、単なるジャンプ(goto)に置き換えられるので、
-- スタックは溢れない。

-- ## 階乗
-- 階乗を素朴な再帰で実現した

my_fact :: Integer -> Integer
my_fact 1 = 1
my_fact n = my_fact (n - 1) * n

-- は、以下のように変形できる。

my_fact_iter :: Integer -> Integer
my_fact_iter x = iter x 1
  where
    iter :: Integer -> Integer -> Integer
    iter 1 acc = acc
    iter n acc = iter (n - 1)(acc * n)

-------- 掛け算

my_mul :: Integer -> Integer -> Integer
my_mul m 1 = m
my_mul m n = my_mul m (n - 1) + m

my_mul_iter :: Integer -> Integer -> Integer
my_mul_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 1 acc = acc
    iter m n acc = iter m (n - 1) (acc + m)

-- 演習


-- 足し算
my_plus_iter :: Integer -> Integer -> Integer
my_plus_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 0 acc = acc
    iter x y acc = iter x (y - 1) (acc + 1)

-- 引き算
my_minus_iter :: Integer -> Integer -> Integer
my_minus_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 0 acc = acc
    iter x y acc = iter x (y - 1) (acc - 1)

-- 累乗
my_power :: Integer -> Integer -> Integer
my_power _ 0 = 1
my_power m n = my_power m (n - 1) * m


my_power_iter :: Integer -> Integer -> Integer
my_power_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 1 acc = acc
    iter x y acc = iter x (y - 1) (acc * x)
