class PostsController < ApplicationController
    before_action :authenticate_user!
    # load_and_authorize_resource

    def index
        @user = User.find(params[:user_id])
        @posts = @user.posts
    end


    def show
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
        @comment = Comment.new
    end

    def new
        @user = User.find(params[:user_id])
        @post = @user.posts.build
    end

    def create
        @post = current_user.posts.build(post_params) # Use current_user instead of finding by params[:user_id]
        if @post.save
          redirect_to root_path, notice: 'Post created successfully'
        else
          render :new
        end
    end

    def destroy
        @post.destroy
        redirect_to posts_path, notice: 'Post was successfully deleted.'
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :text)
    end
end
