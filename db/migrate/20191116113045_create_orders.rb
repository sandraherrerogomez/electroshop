class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.numeric :user

      t.timestamps
    end
  end
end
