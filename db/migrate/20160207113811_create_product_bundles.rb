class CreateProductBundles < ActiveRecord::Migration
  def change
    create_table :product_bundles do |t|
      t.integer :product_category_id
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
