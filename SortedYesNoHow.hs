module Kata where
--Implement function to check whether array is sorted or not
--I will try this through list comprehensions as that may be quicker than sorting which may take more time 
isSortedAndHow :: [Integer] -> String
--Use a list comprehension
isSortedAndHow xs
    | all (\(a, b) -> a <= b) pairs = "yes, ascending"
    | all (\(a, b) -> a >= b) pairs = "yes, descending"
    | otherwise = "no"
    where
        pairs = zip xs (tail xs)  -- Tried the zip function in Haskell which creates pairs of adjacent elements