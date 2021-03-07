class Student < ApplicationRecord
  scope :active, -> {where(is_active: true)}
end
