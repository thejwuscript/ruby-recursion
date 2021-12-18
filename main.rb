# Define a recursive function that returns true if a string is a palindrome
# and false otherwise.

def palindrome?(string)
  if string.length <= 2
    return true if string[0] == string[-1]
  else
    return false unless string[0] == string[-1]

    string.slice!(0)
    string.slice!(-1)
    palindrome?(string)
  end
end

# Define a recursive function that takes an argument n and prints
# "n bottles of beer on the wall", "(n-1) bottles of beer on the wall",
# ..., "no more bottles of beer on the wall".

def countdown(n)
  if n == 0
    puts "no more bottles of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
    countdown(n-1)
  end
end