class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show 
		@product = Product.find_by(id: params[:id])
	end

	def new
	end

	def create
		@prodcut = Product.create({name: params[:name],
								price: params[:price],
								image: params[:image],
								description: params[:description]})
	end

	def edit 
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])

		@product.update({name: params[:name],
								price: params[:price],
								image: params[:image],
								description: params[:description]})
	end

	def destroy
		@product = product.find(params[:id])
		@product.destroy
	end
end

