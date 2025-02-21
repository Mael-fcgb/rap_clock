json.extract! artist, :id, :pseudo, :image, :description, :created_at, :updated_at
json.url artist_url(artist, format: :json)
