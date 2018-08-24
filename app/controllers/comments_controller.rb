class CommentsController < ApplicationController
  before_action :set_own_comment, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], user: :all

  layout "form"

  # GET /comments
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  def create
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to request.referrer, notice: "Comment was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      redirect_to @comment, notice: "Comment was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
    redirect_to request.referrer, notice: "Comment was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_own_comment
    @comment = current_user.comments.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:content, :discussion_id)
  end
end
