class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      flash[:notice] = "Review Posted!"
    else
      flash[:alert] = "Something went wrong."
    end
    redirect_to product_path(@product)
  end

private
  def review_params
    params.require(:review).permit(:content)
  end

end
