class BookOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :books_orders, :id => false do |t|
      t.references :book
      t.references :order 
    end
    
  end
end
