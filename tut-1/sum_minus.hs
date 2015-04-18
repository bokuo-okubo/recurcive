--sum.hs

{-
my_plus m 0 = m
my_plus m 1 = m + 1
my_plus m 2 = m + 1 + 1
-}
my_plus :: Integer -> Integer -> Integer
my_plus m 0 = m
my_plus m n = my_plus m (n-1) + 1


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