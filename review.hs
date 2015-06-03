-- 再帰ドリルの復習

my_soap_iter :: Integer -> Integer
my_soap_iter x = my_soap_iter' x 0

my_soap_iter' :: Integer -> Integer -> Integer
my_soap_iter' 0 acc = acc
my_soap_iter' n acc = my_soap_iter' (n - 1) (acc + n)
