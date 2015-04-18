-- sum of arithmetic progression

my_soap :: Integer -> Integer
my_soap 0 = 0 -- basis
my_soap n = my_soap(n-1) + n --recursive

