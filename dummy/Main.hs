import GHC.Stats

fib 0 = 0
fib 1 = 1
fib n = fib (n - 2) + fib (n - 1)

main = do 
    print $ fib 20
