# ------------------------------------------
# PROBLEM 6
# ------------------------------------------

# the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# ------------------------------------------
# PSEUDO-CODE
# ------------------------------------------

# Find the square of sums from 1-100
# Find the sum of squares from 1-100
# subtract the summed squares from the squared sums

# # ------------------------------------------
# # SOLUTION
# # ------------------------------------------

# create an array of all numbers 1-100
numbers = *(1..100)

# use reduce method to add all numbers in array together
sum = numbers.reduce(:+)

# square the sum of numbers in array
squared_sum = sum * sum 

# loop through array and square every number. Add each square to total them
total = 0 
numbers.each do
  |number|
  squared = number * number
  total += squared
end

# subtract summed squares from squared sum
diff_sumsquared_squaresummed = squared_sum.to_i - total.to_i

p diff_sumsquared_squaresummed

