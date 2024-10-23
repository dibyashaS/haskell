module Codewars.Kata.Compare where

import Data.List(sort)

comp :: [Integer] -> [Integer] -> Bool

--Base Cases

comp[][]=True --If both lists are empty, return true
comp [] _ = False --If only first list is empty, false
comp _ []=False --If only second list is empty, false

comp a b= sort squared == sort b --Sorting and Calling the two functions that we want to implement
  where 
    squared=[x*x| x<-a]--using a guard, x<-a means for each element x in the list a