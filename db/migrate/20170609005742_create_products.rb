class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.decimal :price
      t.boolean :active
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
