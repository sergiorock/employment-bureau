class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :document_type
      t.string :document_number
      t.date :birthdate
      t.string :email
      t.string :career
      t.integer :career_year
      t.text :experience
      t.boolean :is_active, default: false

      t.timestamps
    end
  end
end
