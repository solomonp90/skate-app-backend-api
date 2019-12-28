class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :content
      t.string :image
      t.string :video
      t.belongs_to :spot, null: false, foreign_key: true
      t.belongs_to :skater, null: false, foreign_key: true

      t.timestamps
    end
  end
end
