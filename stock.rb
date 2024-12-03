def stock_picker(prices)
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, buy_day|
    prices[buy_day + 1..-1].each_with_index do |future_price, future_index|
      sell_day = buy_day + 1 + future_index
      profit = future_price - price

      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  best_days
end

# Example usage
puts stock_picker([17,3,6,9,15,8,6,1,10])  # => [1, 4]
