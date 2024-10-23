-- Function to remove consecutive duplicates from a list
uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder [] = []  -- Base case: an empty list returns an empty list
uniqueInOrder (x:xs) = x : uniqueHelper x xs  -- Keep the first element and process the rest

-- Helper function to remove duplicates recursively
uniqueHelper :: Eq a => a -> [a] -> [a]
uniqueHelper _ [] = []  -- If the list is empty, return an empty list
uniqueHelper prev (x:xs)
  | x == prev = uniqueHelper prev xs  -- Skip duplicates
  | otherwise = x : uniqueHelper x xs  -- Keep the element and continue