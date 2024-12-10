# Ada Range Check Bug

This repository demonstrates a common off-by-one error in Ada when performing range checks. The `Check_Range` function incorrectly excludes the minimum and maximum values from the range.

## Bug Description
The `Check_Range` function uses `>` and `<` instead of `>=` and `<=`, resulting in values at the boundary not being considered within the range. This is a classic off-by-one error.

## How to Reproduce
1. Compile and run the `bug.ada` file.
2. Observe that the output incorrectly states that the number 5 is out of range (1..10), even though it is within the range.

## Solution
The `bugSolution.ada` file provides the corrected version of the `Check_Range` function, using `>=` and `<=` for accurate range inclusion.