class CreateMeters < ActiveRecord::Migration[7.0]
  def change
    create_table :meters do |t|
      t.string :name
      t.string :location
      t.string :unit

      t.timestamps
    end
  end
end
