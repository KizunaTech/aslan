class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :users, type: :uuid, null: false, foreign_key: true
      t.references :posts, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
