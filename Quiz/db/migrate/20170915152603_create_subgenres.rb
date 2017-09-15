class CreateSubgenres < ActiveRecord::Migration[5.1]
  def change
    create_table :subgenres do |t|
      t.string :name
      t.string :description
      t.integer :genre_id

      t.timestamps
    end
  end
end
