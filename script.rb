def stock_picker(array)
  # Nested array with each best price and their index from the original array
  best_buy_index = 0
  best_sell_index = 0
  max_profit = 0

  array.each_with_index do |price, index|
    array[index+1..-1].each_with_index do |other_price, other_index|
      unless other_price == nil && price < other_price
        profit = other_price - price

        if profit > max_profit
          max_profit = profit
          best_buy_index = index
          best_sell_index = index + 1 + other_index
        end
      end
    end    
  end

  [best_buy_index, best_sell_index]
end

prices_array = [17,3,6,9,15,8,6,1,10]
stock_picker(prices_array)