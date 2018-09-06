class CreateAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.integer :user_id, null: false
      t.text :answer, null: false
      t.timestamps
    end
    add_index :answer_choices, :user_id
    add_index :answer_choices, [:question_id, :user_id], unique: true
  end
end
