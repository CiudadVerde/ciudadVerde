json.extract! input_type, :id, :nombre, :descripcion, :created_at, :updated_at
json.url input_type_url(input_type, format: :json)