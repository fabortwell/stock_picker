---

# Stock Picker

This project implements a method `#stock_picker` that determines the best days to buy and sell stocks for maximum profit.

## Description

The `#stock_picker` method takes an array of stock prices, where each element represents the price on a hypothetical day. It returns an array of two integers: the best day to buy and the best day to sell to achieve the maximum profit. The method ensures that the buy day is before the sell day.

## Usage

### Method Definition

```ruby
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
```

### Example

```ruby
puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# Output: [1, 4]  # for a profit of $12
```

## Contributing

Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request.

## License

This project is licensed under the MIT License.

---
