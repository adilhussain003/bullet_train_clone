class CreateMotivations < ActiveRecord::Migration[7.0]
  def change
    create_table :motivations do |t|
      t.string :name

      t.timestamps
    end
  end
end
