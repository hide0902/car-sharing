class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :maker
      t.integer :price
      t.integer :period
      t.integer :gas
      t.integer :type
      t.integer :handle
      t.integer :capa
      t.string :prefecture
      t.string :city
      t.timestamps
    end
  end
end
