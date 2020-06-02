class CreatePassengers < ActiveRecord::Migration[6.0]
  def change
    create_table :passengers do |t|
      t.references :booking, index: true, null: false, foreign_key: {to_table: :bookings}
      t.string :name 
      t.string :email

      t.timestamps
    end
  end
end
