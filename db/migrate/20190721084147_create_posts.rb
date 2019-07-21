class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :author_id

      t.timestamps
    end

    add_foreign_key :posts, :authors
  end
end
