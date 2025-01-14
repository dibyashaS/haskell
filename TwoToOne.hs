module Codewars.G964.Longest where

import Data.List (nub, sort)

longest :: [Char] -> [Char] -> [Char]
longest s1 s2 = sort . nub $ s1 ++ s2 --nub to remove duplicate characters from concatenated string