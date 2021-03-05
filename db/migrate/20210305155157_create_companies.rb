class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cuit
      t.string :province
      t.string :city
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
