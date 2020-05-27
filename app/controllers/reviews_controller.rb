class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    # we need `restaurant_id` to associate review with corresponding restaurant
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # raise
    if @review.save
      redirect_to restaurant_path(@restaurant)
      # redirect_to @restaurant # also works
    else
      render :new # ???? new.html.erb?/ controller#new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
