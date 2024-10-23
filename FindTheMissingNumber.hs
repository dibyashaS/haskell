module MissingNumber where

missingNo :: [Int] -> Int
missingNo xs = expectedSum - actualSum
  where
    n = length xs  -- Since one number is missing, the length of xs is n
    expectedSum = n * (n + 1) `div` 2  -- Sum of first n natural numbers
    actualSum = sum xs  -- Sum of numbers in the list