class ChangeBookmarkForeignKeyToUuid < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :user_id, :integer
    remove_column :bookmarks, :post_id, :integer

    add_column :bookmarks, :user_id, :uuid, null: false
    add_column :bookmarks, :post_id, :uuid, null: false

    add_index :bookmarks, :user_id
    add_index :bookmarks, :post_id
  end
end
