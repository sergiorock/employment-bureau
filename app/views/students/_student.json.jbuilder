json.extract! student, :id, :name, :last_name, :document_type, :document_number, :birthdate, :email, :career, :career_year, :experience, :is_active, :created_at, :updated_at
json.url student_url(student, format: :json)
