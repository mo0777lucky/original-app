class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to product_path(@comment.product)
    else
      @product = @comment.product
      @comment = @product.comments
      redirect_to "products/show"
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
