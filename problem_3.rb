# ------------------------------------------
# PROBLEM 
# ------------------------------------------

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

# ------------------------------------------
# PSEUDO-CODE
# ------------------------------------------

# Get factors of numbers

def get_factors(number)
  factors = []
  n = 1
  while n <= (number/2) do
    if number % n == 0
      factors << n
    end
    n+=1
  end
  return factors 
end

# Determine if a number is prime

def is_prime(number)
  if get_factors(number).length == 2
    return number
  end
end

# loop through all factors and set largest prime factor

all_factors = get_factors(4)
largest_prime_factor = 0 

all_factors.each do |factor|
  if is_prime(factor) && factor > largest_prime_factor
    largest_prime_factor = factor
  end
end

p largest_prime_factor

# This code all works, but it is not optimized. At higher numbers, it wil take forever to process, because it looks at every single number. there's a better way to do this.

# ------------------------------------------
# SOLUTION
# ------------------------------------------

# This solution starts i @ 2, the first prime number, and proceeds to go up from there. i never gets bigger than the square root of the number, because if you find one side of the pair of the factors of the number, you simply divide the number by the small of the pair to get the larger of the pair. For example (24), if you find 4, you just divide 24/4 to find six. This breaks even numbers down until they're no longer even, and odd numbers down until they're only divisible by themselves and 1. It goes through ever number starting @ 2 up unto the square root of the number.

def largest_prime_factor(number)
  i = 2
  while i * i <= number       
    while number % i == 0     
      number = number / i     
      break if number == i
    end
    i += 1
  end
  number
end

p largest_prime_factor(600851475143) # => 6857