# Num Repeats #20
# Write a method that takes in a string and returns the number of letters that
# appear more than once in the string.
# You may assume the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the string.

def num_repeats(string)

i = 0

minor_bag = []

while i < string.length

  j = i + 1

  while j <= string.length

    if string[i] == string[j]
      unless minor_bag.include?(string[j])
          minor_bag.push(string[j])
      end
    end
    
    # As the iteration moves from left to right, the number of comparisons 
    # reduces. To compare by checking the previous indices would be repetition
    # because each comparison has already been made leading to O(n) time efficieny
    # which is much better than the previous O(n^2) txea solution.

     j += 1

    end

    i += 1
  end

# You would have a list of the letters that repeat and get their size.

minor_bag.size

end


#These are tests to check that your code is working. After writing your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s) # one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
