class CreateReadings < ActiveRecord::Migration[7.0]
  def change
    create_table :readings do |t|
      t.references :meter, null: false, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end
