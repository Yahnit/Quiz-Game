class CreateSubgenres < ActiveRecord::Migration[5.1]
  def change
    create_table :subgenres do |t|
      t.string :name
      t.string :description
      t.integer :genre_id
      t.references :genre, foreign_key: true
      t.timestamps
    end
  end
end
