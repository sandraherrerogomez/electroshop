class AddLongDescriptionToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :long_description, :string
  end
end
