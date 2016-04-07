class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.integer :price_in_cents
      t.integer :inventory

      t.timestamps
    end
  end
end
