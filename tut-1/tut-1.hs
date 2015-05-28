-- sum of arithmetic progression　（等差数列）
--差が１の等差数列の和
{-
my_soap 0 = 0
my_soap 1 = 0 + 1
my_soap 2 = 0 + 1 + 2
my_soap 3 = 0 + 1 + 2 + 3
my_soup n = my_soap (n - 1) + n
-}

my_soap :: Integer -> Integer
my_soap 0 = 0 -- basis
my_soap n = my_soap(n-1) + n --recursive


--fact.hs
{-
fact 1 = 1
fact 2 = 1 * 2
fact 3 = 1 * 2 * 3
fact 4 = 1 * 2 * 3 * 4
fact n = fact (n-1) * n
-}

my_fact :: Integer -> Integer
my_fact 1 = 1
my_fact n = my_fact(n - 1) * n




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



-----------------------------------------------------------------------------------------------------
--演習
-----------------------------------------------------------------------------------------------------



--sum.hs
{-
my_plus m 0 = m
my_plus m 1 = m + 1
my_plus m 2 = m + 1 + 1
-}
my_plus :: Integer -> Integer -> Integer
my_plus m 0 = m
my_plus m n = my_plus m (n-1) + 1



-- minus.hs
{-
my_minus m 0 = m
my_minus m 1 = m - 1
my_minus m 2 = m - 1 - 1
my_minus m 3 = m - 1 - 1 - 1
my_minus m n = my_minus m (n - 1) - 1
-}

my_minus :: Integer -> Integer -> Integer
my_minus m 0 = m
my_minus m n = my_minus m (n - 1) - 1


-- power.hs
{-
my_power m 0 = 1
my_power m 1 = m
my_power m 2 = m * m
my_power m 3 = m * m * m
my_power m n = my_power m (n - 1) * m
-}

my_power:: Integer -> Integer -> Integer
my_power m 0 = 1
my_power m n = my_power m (n - 1) * m
