class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def create
  end
  
end
