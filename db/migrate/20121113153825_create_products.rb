class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.float :cost
      t.integer :quantity
      t.integer :category
      t.integer :sale
      t.integer :new

      t.timestamps
    end
  end
end
