class Student < ApplicationRecord
  scope :active, -> {where(is_active: true)}

  validates :name, :last_name, :document_type, :document_number, :birthdate, :experience, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
end
