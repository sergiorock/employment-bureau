class CreateJobOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_offers do |t|
      t.text :description
      t.date :start_date
      t.date :end_date
      t.boolean :is_active, default: false
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
