def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  inventory_list.each do |key, value| # each accesses |key, value| of hashes  similarly to |element, index| in arrays
    # use puts to output each list item "<key>, quantity: <value>" to console
    # puts "#{li}, quantity:#{inventory_list[:li]}"
    puts "#{key}, quantity: #{value}"
  end
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  guesses.each_with_index do |guess, index|
    # use puts to output each list item "Guess #<number> is <item>" to console
    puts "Guess ##{index.to_i + 1} is #{guess}"
  end
    # hint: the number should start with 1
end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  numbers.map do |number|
    # return an array of absolute values of each number
    number.abs
  end
end

def find_low_inventory(inventory_list)
=begin
    
  First attempt with working solution

      # make new hash to store return values
      new_hash = {}
      # use #select to iterate through each item of the inventory_list (a hash)
      inventory_list.select do |key, value|
        # return a hash of items with values less than 4
        if value < 4.0
          new_hash[key] = value
        end
      end
      new_hash
=end

# Second attempt with optimized solution. ".select" method functions similarly to js ".filter"      
  inventory_list.select do |inventory_item, item_value|
    item_value < 4
  end
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  word_list.reduce({}) do |acc_hash, word|
    acc_hash[word] = word.length
    # had to put "acc_hash" below to actually return it from reduce. Won't work otherwise
    acc_hash
  end
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
end
