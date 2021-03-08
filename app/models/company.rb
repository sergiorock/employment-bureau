class Company < ApplicationRecord
  has_many :job_offers, dependent: :delete_all

  validates :name, :cuit, :province, :city, :address, :phone, :email, presence: true
end
