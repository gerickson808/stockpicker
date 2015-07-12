
class String
	def numerical?
	Integer(self) != nil rescue false
	end
end

def stockpicker(numbers)
	indices = numbers.length
	max_diff = 0
	buy_day = 0
	sell_day = 0
	numbers.each_with_index do |value, i|
		print "Day #{i+1}: $#{value}  "
		numbers.each_with_index do |v2,i2|
			if i2>i
				diff = v2 - value
				if diff > max_diff
					buy_day = i + 1
					sell_day = i2 + 1
					max_diff = diff
				end
			end
		end
	end
	print "\n"
	print "Buy on day #{buy_day} and sell on day #{sell_day} for a profit of $#{max_diff}."
end


puts "Enter stock price, enter end when finished."
stocks = []
stock = ""
while stock != "end" do
	stock = gets.chomp	
	if stock.numerical? then stocks.push(stock.to_i) end
end
stockpicker(stocks)


