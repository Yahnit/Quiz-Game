class CreateLeaderboards < ActiveRecord::Migration[5.1]
  def change
    create_table :leaderboards do |t|
      t.integer :user_id
      t.integer :genre_id
      t.integer :subgenre_id
      t.integer :score
      t.references :user :genre, :subgenre, foreign_key: true
      t.timestamps
    end
  end
end
