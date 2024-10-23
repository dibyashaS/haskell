module Codewars.Kata.Which where

import Data.List (nub, sort)

-- Function to find unique substrings from a1 that are in any string of a2
inArray :: [String] -> [String] -> [String]
inArray a1 a2
  | null a1 || null a2 = []  -- Return an empty list if either list is empty
  | otherwise = sort . nub $ [s | s <- a1, any (contains s) a2]  -- Use sort to order results

-- Helper function to check if one string contains another
contains :: String -> String -> Bool
contains sub str = sub `elem` (substrings str)

-- Function to generate all substrings of a given string
substrings :: String -> [String]
substrings str = [take len (drop start str) | start <- [0..length str - 1], len <- [1..length str - start]]