class ProductsController < ApplicationController

	def displayitem
		@product = Product.all
	end
end
