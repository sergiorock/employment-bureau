json.extract! job_offer, :id, :description, :start_date, :end_date, :is_active, :company_id, :created_at, :updated_at
json.url job_offer_url(job_offer, format: :json)
