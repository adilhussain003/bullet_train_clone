class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.references :motivationer, null: false, foreign_key: {to_table: :questions}

      t.timestamps
    end
  end
end
