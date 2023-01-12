class CreateQuestionMotivations < ActiveRecord::Migration[7.0]
  def change
    create_table :question_motivations do |t|
      t.references :motivation, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
