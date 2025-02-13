{-# LANGUAGE BangPatterns #-}
module Main (main) where
import Data.List

x = x + 1

fiba = fib 300000 0 1
  where fib 0 _ b = b
        fib n a b = fib (n - 1) b (a + b)
inf1 = inf x
  where inf n = 0

fibb = fib 300000 0 1
  where fib 0 _ b = b
        fib n a b = fib (n - 1) b (a + b)
inf2 = inf x
  where inf n = 0

fibc = fib 300000 0 1
  where fib 0 _ b = b
        fib n a b = fib (n - 1) b (a + b)
inf3 = inf x
  where inf n = 0

fibd = fib 300000 0 1
  where fib 0 _ b = b
        fib n a b = fib (n - 1) b (a + b)

-- main = do putStrLn $ show (fiba + fibb + fibc + inf1 + inf2 + inf3)
main = do putStrLn $ show (fiba + inf3)
