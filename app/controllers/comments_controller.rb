class CommentsController < ApplicationController

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.create(comment_params)

    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :image_set_id)
  end

end
