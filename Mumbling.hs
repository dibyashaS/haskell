module Codewars.G964.Accumule where

import Data.Char (toUpper, toLower)

accum :: String -> String
accum = accumHelper 0
  where
    -- Recursive helper function that keeps track of the index and builds the result
    accumHelper _ [] = []--base case
    accumHelper idx (x:xs) =
      -- Convert first char to uppercase, then repeat lowercase version 'idx' times
      toUpper x : replicate idx (toLower x)
      -- Add a dash if there are more characters, and continue recursively
      ++ (if null xs then "" else "-") ++ accumHelper (idx + 1) xs