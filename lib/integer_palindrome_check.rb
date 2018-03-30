# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  return false if number == nil || number < 0

  length = 0
  num = number

  until num < 10
    length += 1
    num /= 10
  end

  start = 1
  while length > 2

    i = number / (10 ** length) % 10
    j = number % (10 ** start) / (10 ** (start-1))

    return false if i != j

    length -= 1
    start += 1
  end

  return true
end
