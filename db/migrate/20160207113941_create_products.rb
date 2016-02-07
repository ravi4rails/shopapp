class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_category_id
      t.integer :product_bundle_id
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
