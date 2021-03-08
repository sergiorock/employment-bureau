class Company < ApplicationRecord
  has_many :job_offers, dependent: :delete_all

  validates :name, :cuit, :province, :city, :address, :phone, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
end
