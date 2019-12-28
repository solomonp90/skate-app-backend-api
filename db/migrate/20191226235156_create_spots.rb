class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :image
      t.string :kind
      t.string :details
      t.string :zip

      t.timestamps
    end
  end
end
