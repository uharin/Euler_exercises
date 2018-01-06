
# ------------------------------------------
# PROBLEM 
# ------------------------------------------

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# ------------------------------------------
# PSEUDO-CODE
# ------------------------------------------

# create range of numbers 11- 20. those below 11 are not needed since they are factors of the numbers between 11 and 20

# check if number is divisible by each number in array. If yes, return true, if not, return false


# if false, increase number by 20 and try again


# ------------------------------------------
# SOLUTION
# ------------------------------------------

def is_divisible(number)
  
  # create array of numbers 11-20
  range = *(11..21)
  
  # loop through array and check if number(20) is divisible by each item in array. If not, return false, which ends the is_divisible method

  range.each do |item|
    if number % item != 0
      return false
    end
  end

  # if it makes it through above loop, return true at method's end
  return true 

end

number = 20

# keep looping until is_divisible returns true. If is_divisible returns false number = number + 20
while true
  if is_divisible(number) == true
    p number
    break
  else
    number += 20
  end
end
