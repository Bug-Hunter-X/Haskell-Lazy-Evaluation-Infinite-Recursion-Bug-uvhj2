The problem lies in the original `intsFrom` function's recursive definition. It lacks a termination condition, leading to infinite recursion. The solution introduces a base case to stop the recursion.  The corrected function uses a helper function that explicitly stops when the required number of elements has been generated.

```haskell
intsFrom' :: Int -> [Int]
intsFrom' n = n : intsFrom' (n + 1)

intsFrom :: Int -> Int -> [Int]
intsFrom n limit = take limit (intsFrom' n)

main :: IO ()
main = do
  print $ intsFrom 1 5
```
This corrected version ensures the function terminates after generating the specified number of elements.