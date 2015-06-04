{-

差が1の等差数列の和を素朴な再帰で実現すると以下のようになった
















my_soap_iter :: Integer -> Integer
my_soap_iter x = iter x 0
  where
    iter :: Integer -> Integer -> Integer
    iter 0 acc = acc
    iter n acc = iter (n-1)(acc + n)





my_fact :: Integer -> Integer
my_fact 1 = 1
my_fact n = my_fact (n - 1) * n


my_fact_iter :: Integer -> Integer
my_fact_iter x = iter x 1
  where
    iter :: Integer -> Integer -> Integer
    iter 1 acc = acc
    iter n acc = iter (n - 1)(acc * n)


my_mul :: Integer -> Integer -> Integer
my_mul m 1 = m
my_mul m n = my_mul m (n - 1) + m

my_mul_iter :: Integer -> Integer -> Integer
my_mul_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 1 acc = acc
    iter m n acc = iter m (n - 1) (acc + m)



my_plus_iter :: Integer -> Integer -> Integer
my_plus_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 0 acc = acc
    iter x y acc = iter x (y - 1) (acc + 1)

my_minus_iter :: Integer -> Integer -> Integer
my_minus_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 0 acc = acc
    iter x y acc = iter x (y - 1) (acc - 1)

my_power :: Integer -> Integer -> Integer
my_power _ 0 = 1
my_power m n = my_power m (n - 1) * m


my_power_iter :: Integer -> Integer -> Integer
my_power_iter x y = iter x y x
  where
    iter :: Integer -> Integer -> Integer -> Integer
    iter _ 1 acc = acc
    iter x y acc = iter x (y - 1) (acc * x)
