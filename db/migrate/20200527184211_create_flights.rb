class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.datetime :departure
      t.integer :duration
      t.references :origin, index: true, null: false, foreign_key: {to_table: :airports}
      t.references :destination, index: true, null: false, foreign_key: {to_table: :airports}

      t.timestamps
    end
  end
end
