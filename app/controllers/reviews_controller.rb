class ReviewsController < ApplicationController

  before_filter :book_or_game

  def create

      @review = @reviewable.reviews.create(review_params)

      if @review.reviewable_type == "Book"
        redirect_to book_path(@reviewable)
      elsif @review.reviewable_type == "Game"
        redirect_to game_path(@reviewable)
      end

  end

  private
    def review_params
      params.require(:review).permit(:title, :content,:reviewable_type,:reviewable_id)
    end

  protected
    def book_or_game
      if params[:book_id]
        @reviewable = Book.find(params[:book_id])
      elsif params[:game_id]
        @reviewable = Game.find(params[:game_id])
      end
    end
end
