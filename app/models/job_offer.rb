class JobOffer < ApplicationRecord
  belongs_to :company

  scope :active, -> {where(is_active: true)}
end
