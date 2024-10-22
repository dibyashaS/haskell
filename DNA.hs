module Codewars.Kata.DNA where
import Codewars.Kata.DNA.Types
{-
data Base = A | T | G | C
-}
type DNA = [Base]
dnaStrand:: DNA -> DNA
dnaStrand (A:xs)=T:dnaStrand xs --Recursive case: xs represents the tail
dnaStrand (T:xs)=A:dnaStrand xs 
dnaStrand (C:xs)=G:dnaStrand xs 
dnaStrand (G:xs)=C:dnaStrand xs 

--dnaStrand function using recursion
dnaStrand[]=[] --base case: empty input list returns an empty list