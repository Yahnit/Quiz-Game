class CreateLifelines < ActiveRecord::Migration[5.1]
  def change
    create_table :lifelines do |t|
      t.integer :user_id
      t.integer :question_id
      t.boolean :used, default: false

      t.timestamps
    end
  end
end
