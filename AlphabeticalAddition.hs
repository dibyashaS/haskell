module AddingUpLetters (addLetters) where

import Data.Char (ord, chr)

addLetters :: [Char] -> Char
addLetters [] = 'z' -- return 'z' if the list is empty
addLetters letters = chr $ ((sum (map letterValue letters) - 1) `mod` 26 + ord 'a')
  where
    letterValue c = ord c - ord 'a' + 1 -- Convert letter to its corresponding position