class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.time :date_submitted
      t.integer :status
      t.integer :subtotal
      t.integer :shipping
      t.integer :tax
      t.integer :total
      t.integer :customer_id

      t.timestamps
    end
  end
end
