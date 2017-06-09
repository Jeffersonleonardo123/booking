class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :fullname
      t.string :address
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
