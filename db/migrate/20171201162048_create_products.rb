class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :integer
      t.column :craft_type, :string

      t.timestamps
    end
  end
end
