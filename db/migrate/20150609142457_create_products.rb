class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :photo
      t.string :nombre
      t.integer :price
      t.text :description
      t.integer :stock
      t.string :category

      t.timestamps null: false
    end
  end
end
