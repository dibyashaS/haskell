module Section (section) where

-- Function to find the index of the first section where scrollY is less than the cumulative size
section :: Int -> [Int] -> Maybe Int
section scrollY sizes = findIndx scrollY 0 sizes
  where
    findIndx _ _ [] = Nothing  -- If the list is empty, return Nothing
    findIndx scrollY sec (x:xs)
      -- If scrollY is less than the cumulative size (sec + x), return Just the current index
      | scrollY < sec + x = Just 0
      -- Otherwise, recursively check the next section, adjusting the index
      | otherwise = fmap (+1) (findIndx scrollY (sec + x) xs)  -- Add 1 to the index from the recursive call