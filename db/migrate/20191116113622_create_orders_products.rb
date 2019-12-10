class CreateOrdersProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :orders_products do |t|
      t.references :order, null: false, foreign_key: {on_delete: :cascade}
      t.references :product, null: false, foreign_key: {on_delete: :cascade}
      t.timestamps
    end
  end
end
