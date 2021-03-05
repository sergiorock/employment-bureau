class Company < ApplicationRecord
  has_many :job_offers, dependent: :delete_all
end
