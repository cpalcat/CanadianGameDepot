class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.text :province

      t.timestamps
    end
  end
end
