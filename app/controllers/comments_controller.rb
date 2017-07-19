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

  def index
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end


  def comment_params
    params.require(:comment).permit(:title, :body)
  end

end
