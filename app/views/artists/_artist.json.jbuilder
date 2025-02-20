json.extract! artist, :id, :pseudonym, :image, :description, :created_at, :updated_at
json.url artist_url(artist, format: :json)
