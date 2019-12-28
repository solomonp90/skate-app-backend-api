class CreateSkaters < ActiveRecord::Migration[6.0]
  def change
    create_table :skaters do |t|
      t.string :name
      t.string :zip

      t.timestamps
    end
  end
end
