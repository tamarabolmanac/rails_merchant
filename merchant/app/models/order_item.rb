class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :product

	validates :order_id, :presence => true
	validates :product_id, :presence => true
	validates :quantity, numericality: { only_integer: true , :greater_than_or_equal_to => 1}

    def subtotal
    	price = self.product.price.to_s.to_d
    	qu = self.quantity.to_s.to_d
    	price * qu
    end
end
