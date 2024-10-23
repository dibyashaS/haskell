module Codewars.Kata.FindOdd where

-- Helper function to count occurrences of an element in a list
countOccurrences :: Int -> [Int] -> Int
countOccurrences n xs = length (filter (== n) xs)

-- Main function to find the element that appears an odd number of times
findOdd :: [Int] -> Int
findOdd []=error "Empty List"
findOdd [i] = i  -- Base case: if there's only one element, return it
findOdd (x:xs)
  | countOccurrences x (x:xs) `mod` 2 == 1 = x  -- Check if count of `x` is odd using `mod`
  | otherwise = findOdd (filter (/= x) xs)  -- Otherwise, continue checking the rest of the list