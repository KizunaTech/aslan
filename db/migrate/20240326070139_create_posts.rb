class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts, id: :uuid, default: -> { "gen_random_uuid()" } do |t|
      t.text :content
      t.references :user, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
