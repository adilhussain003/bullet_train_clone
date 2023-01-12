class CreateUserMotivations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_motivations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :motivation, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
