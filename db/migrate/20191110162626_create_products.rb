class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.string :description
      t.string :category
      t.string :image_url
      t.string :long_description
      t.timestamps
    end
  end
end
