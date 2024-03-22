class PostsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @posts = @user.posts
    end


    def show
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:id])
    end

    def new
        @user = User.find(params[:user_id])
        @post = @user.posts.build
    end

    def create
        @user = User.find(params[:user_id])
        @post = @user.posts.build(post_params)
        if @post.save
          redirect_to root_path, notice: 'Post created successfully'
        else
          render :new
        end
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :text)
    end
end
