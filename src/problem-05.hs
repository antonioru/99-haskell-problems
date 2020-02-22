--Reverse a list
module Problem5(reverseList) where

reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]
