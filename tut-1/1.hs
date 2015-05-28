-- % cabal install hspec
-- % runghc <this_file>

import Small

main :: IO ()
main = hspec $ do
    describe "my_soap" $
      prop "behaves as model" $ \(Small n) -> n >= 0
        ==> my_soap n == sum [0..n]
    describe "my_fact" $
      prop "behaves as model" $ \(Small n) -> n >= 1
        ==> my_fact n == product [1..n]
    describe "my_mul" $
      prop "behaves as model" $ \(Small m) (Small n) -> m >= 1 && n >= 1
        ==> my_mul m n == m * n
    describe "my_plus" $
      prop "behaves as model" $ \(Small m) (Small n) -> m >= 0 && n >= 0
        ==> my_plus m n == m + n
    describe "my_minus" $
      prop "behaves as model" $ \(Small m) (Small n) -> m >= 0 && n >= 0
        ==> my_minus m n == m - n
    describe "my_power" $
      prop "behaves as model" $ \(Small m) (Small n) -> m >= 1 && n >= 0
        ==> my_power m n == m ^ n

