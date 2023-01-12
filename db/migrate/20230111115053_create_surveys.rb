class CreateSurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :surveys do |t|
      t.references :creator, null: false, foreign_key: {to_table: :surveys}
      t.references :motivation, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
