class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :trademark
      t.string :address
      t.string :complement

      t.timestamps null: false
    end
  end
end
