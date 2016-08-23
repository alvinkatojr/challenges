# Write a program that will take a nested list and returns a single list with all values

# flatten_array
# [[8, 9], [[8, 3], 9]] ==> [8, 9, 8, 3, 9]

def flatten_array(array)

  # Look for a number and then return it, store the number in another array
  # Look for another array, iterate over it, and get its contents

  main_bag = []

  i = 0

  while i < array.size
    current_number = array[i]

    if current_number.is_a?(Integer)
      main_bag << current_number
    else
      main_bag += flatten_array(current_number)
    end

    i += 1
  end

  main_bag
end


print flatten_array([[8, 9], [[8, 3, [8, 10]], 9]])
