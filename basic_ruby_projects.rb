# Solutions from rlmoser99 (https://github.com/rlmoser99)

# Caesar Cipher exercise
class CaesarCipher
  def translate(message, shift, result = '') # Create translate method which accepts a message (string), shift (integer), and default result (string)
    message.each_char do |char| # Loop through each character
      base = char.ord < 91 ? 65 : 97 # Determine if lowercase or uppercase base should be used
      if char.ord.between?(65, 90) || char.ord.between?(97, 122) # Check if the character is lowercase (between 97 and 122) or uppercase (between 65 and 90)
        rotation = (((char.ord - base) + shift) % 26) + base # Add shift
        result += rotation.chr # Add character to result
      else
        result += char # Capture non-letter characters like punctuation
      end
    end
    result # Return result
  end
end

# Sub Strings exercise
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary) # Create substrings method that takes a string and dictionary (array)
    matches = {} # Create empty hash
    dictionary.each do |word| # Loop through each word of dictionary
        matches[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word) # Add hash key-value pairs if found (key: word, value: count of occurrences)
    end
    matches # Return matches
end

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

# Stock Picker exercise
def stock_picker(prices) # Create stock picker method that takes a prices (array)
  # Variables needed to solve
  highest_profit = 0
  best_day_to_buy = 0
  best_day_to_sell = 0
  # Loop through each price
  prices.each do |price|
      current_day = prices.index(price)
      # Compare each current price to future prices
      future_prices = prices[current_day + 1..-1]
      future_prices.each do |future_price|
          possible_profit = future_price - price
          future_days = future_prices.index(future_price) + 1
          # Re-write variables when the profit is higher
          if possible_profit > highest_profit
              highest_profit = possible_profit
              best_day_to_buy = current_day
              best_day_to_sell = best_day_to_buy + future_days
          end
      end
  end
  print [best_day_to_buy, best_day_to_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

# Bubble Sort exercise
def bubble_sort(array)
  unsorted = true
  while unsorted do
      i = 0
      unsorted = false
      while i < (array.length - 1)
          if array[i] > array[i + 1]
              array[i], array[i + 1] = array[i + 1], array[i] # Dynamically sort array by pairs until array is completely sorted
              unsorted = true
          end
          i += 1
      end
  end
  print array    
end

puts bubble_sort([4,3,78,2,0,2])