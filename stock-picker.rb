=begin
Stock picker
- Given the array of stock prices, identify the buy and sell date
- The sell date should come after the buy date
=end

def stock_picker(stocks)
  profit = 0

  for i in 0...stocks.length
    # ensures that when looping through the prices, sell date comes after buy date
    for j in (i+1)...stocks.length
      if (stocks[j] - stocks[i]) > profit
        profit = stocks[j] - stocks[i]
        buy_date = i
        sell_date = j
      end
    end
  end

  days = [buy_date, sell_date]
  p days
  p "Total profit would be $#{profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([1,3,19,1,18,8,6,10,19])