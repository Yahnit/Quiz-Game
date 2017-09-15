class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.string :option_desc
      t.integer :question_id
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
