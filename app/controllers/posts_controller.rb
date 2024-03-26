class PostsController < ApplicationController
  def show
    user = User.find_by(username: params[:username])
    # if user
    #   @post = user.posts.find(params[:id])
    # else
    #   # Handle case when user doesn't exist
    # end
  end
end
