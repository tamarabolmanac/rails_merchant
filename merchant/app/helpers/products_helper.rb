module ProductsHelper
	def print_price(price)
	  number_to_currency price
	end

	def print_stock(stock,requested = 1)
	  if requested <= stock
	  	content_tag(:span, "In Stock ("+stock.to_s+")", class: "in_stock")
	  else
		  if requested > stock and stock > 0
		  	content_tag(:span, "Insufficient stock ", class: "out_stock")
		  else 
		  	content_tag(:span, "Out of stock ", class: "out_stock")
		  end
		end
	end

end
