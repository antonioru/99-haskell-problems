# 🎱 99-haskell-problems

A series of 99 (unfortunate) Haskell problems, with possible solutions. 

### Why? 

This repository is meant to be a playground to possibly learn Haskell. <br />
It contains the 99 problems from [Ninety Nine Haskell Problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems) with our best possible solutions (meaning they're probably not the absolute best) <br />
Feel free to comment or improve the solutions.

### Usage:

By using ghci: 

```bash
$ ghci src/<proble-file>.hs

*ProblemN:> exportedFn ... 
```

### Problems:

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
6. Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
7. Flatten a nested list structure.
8. Eliminate consecutive duplicates of list elements.
9.  Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
10.  Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E. 