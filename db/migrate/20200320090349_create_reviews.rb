class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :car, foreign_key: true
      t.references :user, foreign_key: true
      t.float :rate
      t.text :comment
      t.timestamps
    end
  end
end
