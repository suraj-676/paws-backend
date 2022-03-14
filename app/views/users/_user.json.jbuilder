json.extract! user, :id, :is_admin, :first_name, :last_name, :email, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
