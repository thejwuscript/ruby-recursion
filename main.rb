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