# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :find_user_and_post

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = @user

    if @comment.save
      redirect_to user_post_path(@user, @post), notice: "Comment was successfully created."
    else
      render "posts/show"
    end
  end

  private

  def find_user_and_post
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
