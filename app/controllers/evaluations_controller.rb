class EvaluationsController < ApplicationController


  def new
    @book = Book.find(params[:book_id])
  end
  def create
    @book = Book.find(params[:book_id])
    @evaluation = Evaluation.create(evaluation_params)
    @book.evaluation = @evaluation
    redirect_to book_path(@book)
  end

  private
    def evaluation_params
      params.require(:evaluation).permit(:book_id, :backscore, :plotscore, :stylescore)
    end
end
