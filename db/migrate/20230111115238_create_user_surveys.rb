class CreateUserSurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :user_surveys do |t|
      t.references :survey, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
