json.extract! user, :id, :name, :lastName, :picture, :created_at, :updated_at
json.url user_url(user, format: :json)
