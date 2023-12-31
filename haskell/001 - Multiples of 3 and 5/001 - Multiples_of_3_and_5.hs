{-
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000
-}

multiplesOf3and5 :: Int -> Int
multiplesOf3and5 n = sum [x | x <- [1..n-1], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = putStrLn $ show (multiplesOf3and5 1000)

