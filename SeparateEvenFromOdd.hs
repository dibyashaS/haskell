module MenBoys where

import Data.List (nub, sort)

menFromBoys :: [Int] -> [Int]
menFromBoys xs = sortedEvens ++ sortedOdds --use supplied argument (++) to concatenate
  where
    -- Remove duplicates and filter even and odd numbers
    --List comprehension has target, generator, guard and local binding

    evenNums = nub [x | x <- xs, x `mod` 2 == 0]--x:target, result we need
    oddNums  = nub [x | x <- xs, x `mod` 2 == 1]--generator: inputList,produces values

    --guard: conditionals x'mod' 2
    --local binding: evenNums which will store the list values
    
    -- Sort evens in ascending order
    sortedEvens = sort evenNums
    -- Sort odds in descending order
    sortedOdds = reverse (sort oddNums)
