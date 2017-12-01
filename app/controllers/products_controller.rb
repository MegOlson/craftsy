class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def welcome
    render :welcome
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

end
