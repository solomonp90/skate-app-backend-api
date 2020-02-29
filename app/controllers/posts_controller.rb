class PostsController < ApplicationController

    def index
        @posts = Post.all 
        render json: @posts
    end

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def create
        @post = Post.create(post_params)
        render json: @post 
    end 
    
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: @post 
    end

    private

    def post_params
        params.permit(:author,:content,:image,:video,:spot_id,:skater_id)
    end
end
