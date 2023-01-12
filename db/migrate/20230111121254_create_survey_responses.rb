class CreateSurveyResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :survey_responses do |t|
      t.string :response
      t.references :survey, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :response_score_1_to_10
      t.integer :response_score_negative_5_to_5
      t.integer :caculated_change_in_motivation

      t.timestamps
    end
  end
end
