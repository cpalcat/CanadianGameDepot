class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :orderID
      t.integer :customer
      t.integer :productID
      t.integer :quantity

      t.timestamps
    end
  end
end
