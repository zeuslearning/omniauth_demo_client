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
    @comment = @post.comments.create!(params[:comment])
    redirect_to @post
  end
  
end
