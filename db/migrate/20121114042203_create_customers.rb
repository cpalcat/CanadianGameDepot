class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phoneNo
      t.string :province
      t.integer :order
      t.text :email

      t.timestamps
    end
  end
end
