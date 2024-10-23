module Codewars.Kata.BouncingBall where

-- Main function to calculate how many times the ball is visible
bouncingBall :: Double -> Double -> Double -> Integer
bouncingBall h bounce window
  -- Check invalid conditions: height must be > 0, bounce must be between 0 and 1, window must be less than height
  | h <= 0 || bounce <= 0 || bounce >= 1 || window >= h = -1
  -- If valid, start counting the bounces (start with 1 for the initial fall)
  | otherwise = countBounces (h * bounce) bounce window 1

-- Helper function to recursively count the number of bounces
countBounces :: Double -> Double -> Double -> Integer -> Integer
countBounces h bounce window count
  -- Base case: if the height after bouncing is less than or equal to the window, return the current count
  | h <= window = count
  -- Recursive case: ball is seen once falling down and once bouncing up, increase count by 2, and continue
  | otherwise = countBounces (h * bounce) bounce window (count + 2)