class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.string :status, default: 'pending'
      t.integer :listing_id, foreign_key: true
      t.integer :guest_id, foreign_key: true

      t.timestamps
    end
  end
end
