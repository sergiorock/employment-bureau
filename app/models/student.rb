class Student < ApplicationRecord
  scope :active, -> {where(is_active: true)}

  validates :name, :last_name, :document_type, :document_number, :birthdate, :email, :experience, presence: true
end
