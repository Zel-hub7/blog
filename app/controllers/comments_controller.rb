class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to root_path, notice: 'Comment created successfully'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
