-- Find the last but one element of a list.
module Problem2(takeButLast) where

takeButLast :: [a] -> a
takeButLast [] = error "cannot take an element out of an empty list"
takeButLast list = list !! (-2 + length list)