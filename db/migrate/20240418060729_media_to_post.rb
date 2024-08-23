class MediaToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :media, :string
  end
end
