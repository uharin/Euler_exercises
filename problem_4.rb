
# ------------------------------------------
# PROBLEM 
# ------------------------------------------

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# ------------------------------------------
# PSEUDO-CODE
# ------------------------------------------

# find to loop through all 3 digit numbers

# will need outer loop to keep track of index and inner loop to multiply outer index by each number

# run each product through a palindrome checker using .reverse method. If true, shovel into array

# sort array and return last number (which should be highest)


# ------------------------------------------
# SOLUTION
# ------------------------------------------

# create array of 100 - 9999 and empty array to track palindromes 

array = *(100..1000)
max_pals = []

# create outer loop that tracks index to be used in inner loop

array.each_with_index do |item, index|

# create inner loop that takes outer index and multiplies it by every number going up

  array.each do
    product = item.to_i * array[index].to_i
    if product == 0
      break
    end
    product = product.to_s
    if product == product.reverse
      max_pals << product.to_i
    end
    index += 1
  end
end

max_pals = max_pals.sort
p max_pals.last