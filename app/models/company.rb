class Company < ApplicationRecord
  has_many :job_offers, dependent: :delete_all

  validates :name, :cuit, :province, :city, :address, :phone, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true

  def self.search(search)
    if search.present?
      Company.where('name ILIKE :search OR province ILIKE :search OR city ILIKE :search OR email ILIKE :search', search: "%#{search.squish}%")
    else
      @companies = Company.all
    end
  end
end
