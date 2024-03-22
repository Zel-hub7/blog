class CommentsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to user_post_path(@user, @post), notice: 'Comment created successfully'
    else
      render 'posts/show' # Render the post show page with errors
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
