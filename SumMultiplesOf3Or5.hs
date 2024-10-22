
module MultiplesOf3And5 where

solution :: Integer -> Integer
solution m =
  let nums = [1 .. m-1]
  --Now filter for multiples of 3 or 5
      multiples = filter (\n -> n `mod` 3 == 0 || n `mod` 5 == 0) nums
  in sum multiples

