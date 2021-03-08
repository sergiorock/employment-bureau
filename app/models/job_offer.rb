class JobOffer < ApplicationRecord
  belongs_to :company

  scope :active, -> {where(is_active: true)}

  validates :start_date, :description, presence: true

  def self.search(search)
    if search.present?
      JobOffer.where('description ILIKE :search ', search: "%#{search.squish}%")
    else
      @job_offers = JobOffer.all
    end
  end
end
