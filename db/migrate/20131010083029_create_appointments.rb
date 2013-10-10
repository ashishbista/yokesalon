class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :occurs_at, null: false
      t.references :customer, null: false
      t.string :service
      t.decimal :cost
      t.datetime :paid_at
      t.integer :weeks_before_next, default: 6

      t.timestamps
    end
    add_index :appointments, :customer_id
  end
end
