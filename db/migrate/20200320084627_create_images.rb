class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :car, foreign_key: true
      t.string :image_car
      t.timestamps
    end
  end
end
