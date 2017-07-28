class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = comment.new(comment_params)
    if comment.save
      render :show
    else

    end
  end

  def edit
    @sub = Comment.find(params[:id])
    render :edit
  end

  def update
    @sub = Comment.find(params[:id])
    if @sub.update(sub_params)
      redirect_to @sub
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :edit
    end
  end

  def show
    @sub = Comment.find(params[:id])
    render :show
  end

  def index
    @subs = Comment.all
    render :index
  end

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

end
