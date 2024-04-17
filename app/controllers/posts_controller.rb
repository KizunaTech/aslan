class PostsController < ApplicationController
    before_action :authenticate_user!

    def index
        @posts = Post.all.order("created_at DESC")
        puts @posts.inspect
    end

    def new
        @post = Post.new
    end

    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            redirect_to @post, notice: 'Post was successfully created.'
        else
            render :new
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :body, :verse)
    end
end
