module Codewars.G964.Sumconsec where

sumConsecutives :: [Int] -> [Int]
sumConsecutives xs = map sumGroups grouped
  where
    -- Group consecutive elements
    grouped = groupConsecutives xs

    -- Function to create groups of consecutive elements
    groupConsecutives [] = []
    groupConsecutives (y:ys) = (y : takeWhile (== y) ys) : groupConsecutives (dropWhile (== y) ys)

    -- Function to sum a group
    sumGroups group = sum group