
-- Find the K'th element of a list. The first element in the list is number 1.
module Problem3(elementAt) where

elementAt :: [a] -> Int -> a
elementAt [] position = error "cannot take an element out of an empty list"
elementAt list position = list !! position