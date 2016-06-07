class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, null: false

      t.timestamps null: false
    end

    add_index :products, [:name], unique: true, name: 'products_name_uidx'
  end
end
