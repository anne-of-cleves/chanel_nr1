module WinesHelper

	def display_percentage(intvalue)
		"#{intvalue / 10.0} %" 
	end

	def display_price(intvalue)
		price = intvalue / 100.0
		"%.2f €" % price
	end

end
