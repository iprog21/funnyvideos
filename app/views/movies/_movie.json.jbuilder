json.extract! movie, :id, :user_id, :title, :description, :url, :likes, :dislikes, :created_at, :updated_at
json.url movie_url(movie, format: :json)
