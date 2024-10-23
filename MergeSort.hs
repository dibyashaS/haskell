module Merge where

merge :: Ord a => [a] -> [a] -> [a]
--base cases
merge [] ys = ys  -- If the first list is empty, return the second list
merge xs [] = xs  -- If the second list is empty, return the first list
merge (x:xs) (y:ys)  -- Compare the heads of both lists
    | x <= y    = x : merge xs (y:ys)  -- If x is less than or equal to y, include x and merge the rest
    | otherwise  = y : merge (x:xs) ys  -- If y is less, include y and merge the rest