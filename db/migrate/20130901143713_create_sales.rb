class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :customer
      t.decimal :amount
      t.datetime :paid_at

      t.timestamps
    end
    add_index :sales, :customer_id
  end
end
