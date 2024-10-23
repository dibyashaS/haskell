
module Disemvowel where

-- Function to remove vowels from a string
disemvowel :: String -> String
disemvowel str = filter isNotVowel str
  where
    isNotVowel c = c `notElem` "aeiouAEIOU"


