class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :car, foreign_key: true
      t.references :user, foreign_key: true
      t.string :start_rent
      t.string :end_rent
      t.string :place
      t.text :text
      t.string :tel
      t.string :name
      t.timestamps
    end
  end
end
