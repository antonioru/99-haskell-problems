-- Find the last element of a list.

-- Defining takeLast as a function that takes a list of generic type and returns an element of that type.
takeLast :: [a] -> a
takeLast [] = error "cannot take an element out of an empty list"
takeLast list = list !! (-1 + length list) 

-- Alternative implementation by using head and reverse
takeLast2 :: [a] -> a
takeLast2 [] = error "Cannot tast element of an empty list"
takeLast2 list = head (reverse list)