
# ------------------------------------------
# PROBLEM 1
# ------------------------------------------

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# ------------------------------------------
# PSEUDO-CODE
# ------------------------------------------

# Set counter to keep track of sum of numbers divisible by 5 and 3
# Set number to increase number each time through
# divide number by 3 and 5
# if number is divisible by 3/5, add it to counter

# ------------------------------------------
# SOLUTION
# ------------------------------------------

counter = 0
number = 0

1000.times do 
  if number %3 == 0 || number% 5 == 0
    counter += number
  end
  number += 1
end

p counter
