require 'spec_helper'

RSpec.describe Order, type: :model do
	describe 'total' do
		it 'calculates total sum of all order items' do
			
			order = Order.create(
		 	)

		 	product_1 = Product.create!(
		    	price:  5.00,
		    	title:  "Cucumber",
		    )

		    product_2 = Product.create!(
		    	price:  10.00,
		    	title:  "Carrot",
		    )

			order_item_1 = OrderItem.create(
		    	quantity:  5,
		    	product:  product_1,
		    	order: order,
		    )

		    order_item_2 = OrderItem.create(
		    	quantity:  10,
		    	product:  product_2,
		    	order: order,
		    )

		    expect(order.total).to eq(125.00)
		end
	end
end