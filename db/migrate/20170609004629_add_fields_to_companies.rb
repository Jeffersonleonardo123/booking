class AddFieldsToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :neighborhood, :string
    add_column :companies, :city, :string
    add_column :companies, :state, :string
    add_column :companies, :zip, :string
    add_column :companies, :cnpj, :string
  end
end
