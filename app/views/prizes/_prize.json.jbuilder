json.extract! prize, :id, :nombre, :descripcion, :cantidad, :puntos, :user_id, :created_at, :updated_at
json.url prize_url(prize, format: :json)