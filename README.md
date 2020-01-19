# 🎱 99 Haskell problems

A series of 99 (unfortunate) Haskell problems, with possible solutions. 

## Why? 

This repository is meant to be a playground to possibly learn Haskell. <br />
It contains the 99 problems from [Ninety Nine Haskell Problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems) with our best possible solutions (meaning they're probably not the absolute best) <br />
Feel free to comment or improve the solutions.

## Usage:

By using ghci: 

```bash
$ ghci src/<proble-file>.hs

*ProblemN:> exportedFn ... 
```

## Problems:

1. Find the last element of a list.

```haskell
λ> takeLast [1,2,3,4]
4
λ> takeLast ['x','y','z']
'z' 
```

2. Find the last but one element of a list.

```haskell
λ> myButLast [1,2,3,4]
3
λ> myButLast ['a'..'z']
'y'
```

3. Find the K'th element of a list. The first element in the list is number 1.

```haskell
λ> elementAt [1,2,3,4] 2
3
λ> elementAt ['a'..'z'] 3
'd'
```
4. Find the number of elements of a list.
   
```haskell
λ> lengthOf [123, 456, 789]
3
λ> lengthOf "Hello, world!"
13
```
5. Reverse a list.

```haskell
λ> reverseList "A man, a plan, a canal, panama!"
"!amanap ,lanac a ,nalp a ,nam A"
λ> reverseList [1,2,3,4]
[4,3,2,1]
```

6. Find out whether a list is a palindrome. *A palindrome can be read forward or backward; e.g. (x a m a x)*.

```haskell
λ> isPalindrome [1,2,3]
False
λ> isPalindrome "madamimadam"
True
λ> isPalindrome [1,2,4,8,16,8,4,2,1]
True
```
7. Flatten a nested list structure. <br />
   **We have to define a new data type, because lists in Haskell are homogeneous.**
  ```haskell
  data NestedList a = Elem a | List [NestedList a]
  ```
  ```haskell
  λ> flatten (Elem 5)
  [5]
  λ> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
  [1,2,3,4,5]
  λ> flatten (List [])
  []
  ```

8. Eliminate consecutive duplicates of list elements.

```haskell
λ> compress "aaaabccaadeeee"
"abcade"
```

9.  Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
    
```haskell
λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
```
10.   Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E. 
11.   Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
12.   Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.
13.   Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
14.   Duplicate the elements of a list.
15.  Replicate the elements of a list a given number of times.
16.  Drop every N'th element from a list.
17.  Split a list into two parts; the length of the first part is given. Do not use any predefined predicates.
18.  Extract a slice from a list. Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.
19.  Rotate a list N places to the left. *Hint*: Use the predefined functions length and (++).
20.  Remove the K'th element from a list.