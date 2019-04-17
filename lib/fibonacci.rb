# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) in the worst-case scenario. In the best case scenario, it'd be constant because the key already exists.
# Otherwise, the number of k-v pair we need to add depends on big n is.
# Space complexity: O(n), where n is the length of the hash. The bigger number n is, the greater length the fibonacci hash will be

def fibonacci(n)
  raise ArgumentError if n == nil || n < 0
  fibonacci_hash = { 0 => 0, 1 => 1 }

  i = fibonacci_hash.length - 1
  until i > n
    fibonacci_hash[i + 1] = fibonacci_hash[i] + fibonacci_hash[i - 1]
    i += 1
  end

  return fibonacci_hash[n]
end
