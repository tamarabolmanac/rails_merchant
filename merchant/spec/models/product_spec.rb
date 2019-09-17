require 'spec_helper'

RSpec.describe Product, type: :model do
	it "is invalid without " do
		product = Product.new(title: nil)
	   	product.valid?
	   	expect(product.errors[:title]).to include("can't be blank")
	end
end