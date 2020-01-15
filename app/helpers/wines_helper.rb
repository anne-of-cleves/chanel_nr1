module WinesHelper

	def display_percentage(intvalue)
		"#{intvalue / 10.0} %" 
	end

	def display_price(intvalue)
		price = intvalue / 100.0
		"%.2f €" % price
	end

	def display_residual_sugar(intvalue)
#		ressugar = intvalue / 10.0
#		"%.1f g" % ressugar
		"#{intvalue / 10.0} g/L" 
	end

end
