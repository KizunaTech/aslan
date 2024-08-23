class BookmarksController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        current_user.bookmarks.create(post: @post)
        redirect_to request.referrer, notice: 'Post was bookmarked successfully.'
    end

    def destroy
        bookmark = current_user.bookmarks.find_by(post_id: params[:post_id])
        if bookmark.destroy
            redirect_to request.referrer, notice: 'Bookmark was successfully removed.'
        else
            redirect_to request.referrer, alert: 'Failed to remove bookmark.'
        end
    end
end
