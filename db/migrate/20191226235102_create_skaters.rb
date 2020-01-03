class CreateSkaters < ActiveRecord::Migration[6.0]
  def change
    create_table :skaters do |t|
      t.string :name
      t.string :zip
      t.string :password_digest

      t.timestamps
    end
  end
end
