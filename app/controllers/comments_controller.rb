class CommentsController < ApplicationController

  def show
    @comment= Comment.find(params[:id])
  end

  def create
  	@post = Post.find_by(id: comment_params[:post_id])
  	@comment = Comment.create(comment_params)
  	respond_to do |format|
      format.js  
    end
  end

  def likes
    @comment = Comment.find(params[:comment_id])
    @like = @comment.likes.where(likeable_id:@comment.id).first_or_initialize
    if @like.persisted?
      @like.delete
    else
      @like.save!
      
    end

  end
  
  private
  
  def comment_params
  	params.require(:comment).permit(:text,:post_id)
 end
end
