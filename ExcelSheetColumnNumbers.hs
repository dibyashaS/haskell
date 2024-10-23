module Codewars.G964.Title2Nb where
import Data.Char (ord)

titleToNb :: String -> Integer
titleToNb = foldl (\acc x -> acc * 26 + toInteger (ord x - ord 'A' + 1)) 0