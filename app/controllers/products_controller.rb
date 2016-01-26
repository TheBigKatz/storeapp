class ProductsController < ApplicationController

	def index
		if params[:product] == "sort"
			@products = Product.order(price: :desc)
		else
		@products = Product.all
		end 
	end

	def show 
		@product = Product.find_by(id: params[:id])
		@sale_message = nil #fix
	end

	def new
	end

	def create
		@product = Product.create({name: params[:name],
								price: params[:price],
								image: params[:image],
								description: params[:description]})

		flash[:success] = "New Product Posted!"

		redirect_to "/products"
	end


	def edit 
		@product = Product.find_by(id: params[:id])
	end

	def update
		@product = Product.find_by(id: params[:id])

		@product.update({name: params[:name],
								price: params[:price],
								image: params[:image],
								description: params[:description]})

		flash[:success] = "New Product Updated!"

		redirect_to "/products/#{@product.id}"
	end

	def destroy
		@product = Product.find_by(id: params[:id])
		@product.destroy

		flash[:success] = "You Did It, It Is Gone!"
		flash[:warning] = "Product Has Been Terminated!"

		redirect_to "/products"
	end


end
