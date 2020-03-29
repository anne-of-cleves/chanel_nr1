module WinesHelper

	def display_percentage(intvalue)
		"#{intvalue / 10.0} %" if intvalue
	end

	def display_price(price)
		if price
			"%.2f €" % price
		end
	end

	def display_residual_sugar(intvalue)
#		ressugar = intvalue / 10.0
#		"%.1f g" % ressugar
		"#{intvalue / 10.0} g/L" if intvalue
	end

end
