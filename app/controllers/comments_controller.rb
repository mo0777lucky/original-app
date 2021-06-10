class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    #@comment = Comment.new(text: params[:comment][:text])
    if @comment.save
       #ActionCable.server.broadcast 'comment_channel', content: @comment
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

