require 'spec_helper'

RSpec.describe OrderItem, type: :model do
	describe 'subtotal' do
		it 'calculates sum of one order item' do
			
			product = Product.create!(
		    	price:  5.00,
		    	title:  "Cucumber",
		    )

			order_item = OrderItem.create(
		    	quantity:  5,
		    	product:  product,
		    	order: Order.new,
		    )

		    expect(order_item.subtotal).to eq(25.00)
		end
	end
end