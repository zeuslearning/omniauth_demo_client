class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def new
    @comment = @comment.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    @comment.uid = current_user.uid
    @comment.save
    redirect_to post_path(@post.id)
  end
  def destroy

    @comment = Comment.find(params[:id])
    @post = Post.find(@comment.post_id)
    @comment.destroy
    redirect_to post_path(@post.id)
  end
  
end
