json.extract! patient, :id, :name, :email, :created_at, :updated_at
json.url patient_url(patient, format: :json)
