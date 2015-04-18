-- multiple.hs

{-
* 掛け算を一般化すると？

multiple x 1 = x
multiple x 2 = x + x
multiple x 3 = x + x + x ...

* 一つ前の項を利用すると？

multiple x 1 = x
multiple x 2 = multiple x 1 + x
multiple x 3 = multiple x 2 + x

-}

my_mul:: Integer -> Integer -> Integer
my_mul m 1 = m
my_mul m n = my_mul m (n - 1) + m

