class Post < ApplicationRecord
    validates :content, presence: true
    belongs_to :user

    has_many :bookmarks, dependent: :destroy
    has_many :bookmarkers, through: :bookmarks, source: :user
    has_many :comments
    has_many :user_comments, through: :comments
    mount_uploader :media, ImageUploader
end