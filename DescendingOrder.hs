
module DescendingOrder where
--Sorts the value in ascending order which we will reverse in following steps
import Data.List (sort)

descendingOrder :: Integer -> Integer
descendingOrder 0=0
descendingOrder nums = read (reverse (sort (digits nums))) :: Integer
    where
      digits 0 = []  -- Base case
      digits x = (toEnum (fromEnum '0' + fromIntegral (x `mod` 10))) : digits (x `div` 10)

