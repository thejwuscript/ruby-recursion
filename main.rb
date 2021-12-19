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

# Define a recursive function that takes an argument n and returns the fibonacci value
# of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... 
# So fib(5) should return 5 and fib(6) should return 8.

def fib(n)
  if n == 1
    return 1
  elsif n == 0
    return 0
  else
    fib(n-1) + fib(n-2)
  end
end

# Define a recursive function that flattens an array.
# The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and
# [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def recursive_flatten(array)
  if array.flatten == array
    array
  else
    recursive_flatten(array.flatten!(1))
  end
end

# Use the roman_mapping hash to define a recursive method that converts an integer
# to a Roman numeral.
roman_mapping = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}
def integer_to_roman(roman_mapping, integer, roman = '')
  if roman_mapping.keys.select { |k| integer / k >= 1 }[0].nil?
    roman
  else
    key = roman_mapping.keys.select { |k| integer / k >= 1 }[0]
    roman << roman_mapping[key]
    integer_to_roman(roman_mapping, integer - key, roman)
  end
end

# Use the roman_mapping2 hash to define a recursive method that converts
# a Roman numeral to an integer.

roman_mapping2 = {
  'M' => 1000,
  'CM' => 900,
  'D' => 500,
  'CD' => 400,
  'C' => 100,
  'XC' => 90,
  'L' => 50,
  'XL' => 40,
  'X' => 10,
  'IX' => 9,
  'V' => 5,
  'IV' => 4,
  'I' => 1
}

def roman_to_integer(roman, roman_mapping2, result = 0)
  if roman.nil?
    result
  elsif roman_mapping2[roman[0, 2]].nil?
    result += roman_mapping2[roman[0]]
    roman_to_integer(roman.slice!(1..-1), roman_mapping2, result)
  else
    result += roman_mapping2[roman[0, 2]]
    roman_to_integer(roman.slice!(2..-1), roman_mapping2, result)
  end
end
