# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(original_string)
  reversed_string = ""

  # i = 0

  # while i < original_string.length
  #   reversed_string = original_string[i] + reversed_string
  #   i += 1
  # end

  # Second while loop implementation
  #
  i = original_string.length

  while i >= 0
    reversed_string = reversed_string.concat + original_string[i].to_s
    i -= 1
  end
  #
  # original_string.each_char do |char|
  #   reversed_string = char + reversed_string
  # end

  return reversed_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
puts('reverse("a") == "a": ' + (reverse("a") == "a").to_s)
puts('reverse("") == "": ' + (reverse("") == "").to_s)
