
-- Find the number of elements of a list.
module Problem4(lengthOf) where

lengthOf :: [a] -> Int
lengthOf [] = 0
lengthOf list = 1 + lengthOf (tail list)