class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'pgcrypto'
    create_table :bookmarks do |t|
      t.references :user, type: :uuid, null: false, foreign_key: true, index: true
      t.references :post, type: :uuid, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
