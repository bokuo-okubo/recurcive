-- 再帰ドリル(3) 色々な終わり方

-- これまで、再帰を終わらせる基底部は１つだけだった。しかし、複数の場合で再帰を終了させたいことがある。

-- # 偶数

-- 偶数か確かめる関数my_evenは以下のように定義できる。

my_even :: Integer -> Bool
my_even 0 = True
my_even 1 = False
my_even n = my_even (n - 2)

-- より小さい
my_lt :: Integer -> Integer -> Bool
my_lt _ 0 = False
my_lt 0 _ = True
my_lt m n = my_lt (m - 1) (n - 1)

-- また、「以下」を確かめる関数my_lteqは、以下のように定義できる。
my_lteq :: Integer -> Integer -> Bool
my_lteq 0 _ = True
my_lteq _ 0 = False
my_lteq m n = my_lteq (m - 1) (n - 1)


-- はっきりと説明しなかったが、これまでのないようから、以下の基本演算があれば、
-- 足し算、引き算、掛け算、以下、が定義できるのがわかる。
-- - 0 という値
-- - 0 であるか調べる
-- - 1 をたす
-- - 1 を引く

-- 実装した関数は、my_plus, my_minus, my_mul, my_lt, my_lteqであった。
-- 以下では、Haskellの組み込み関数である+, -, *, <, <= を必要に応じて使う。

-- 四則演算子の最後の演算子、my_divideを実装しよう。
-- 基底部の判定に<が使えるようになったので、以下のように定義ができる

-- 割り算

my_divide :: Integer -> Integer -> Integer
my_divide m n
  | m < n = 0
  | otherwise = my_divide (m - n) n + 1

-- my_divide_iter :: Integer -> Integer -> Integer
-- my_divide_iter m n = iter m n m
--   where
--     iter :: Integer -> Integer -> Integer -> Integer
--     iter m n acc
--       |
--       | otherwise = iter (m -
