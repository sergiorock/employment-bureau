json.extract! company, :id, :name, :cuit, :province, :city, :address, :phone, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
