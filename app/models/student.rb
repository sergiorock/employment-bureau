class Student < ApplicationRecord
  scope :active, -> {where(is_active: true)}

  validates :name, :last_name, :document_type, :document_number, :birthdate, :experience, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true

  def self.search(search)
    if search.present?
      Student.where('name ILIKE :search OR last_name ILIKE :search OR document_number ILIKE :search OR email ILIKE :search OR career ILIKE :search OR CAST(career_year AS TEXT) ILIKE :search', search: "%#{search.squish}%")
    else
      @students = Student.all
    end
  end
end
