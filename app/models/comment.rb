class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :posts

  after_save :process_mentions

  private

  def process_mentions
    mentioned_users = content.scan(/@(\w+)/).flatten
    mentioned_users.each do |username|
      user = User.find_by(username: username)
      notify_user(user) if user
    end
  end

  def notify_user(user)
    # Logic to notify the user they have been mentioned
  end
end
