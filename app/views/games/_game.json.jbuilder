json.extract! game, :id, :name, :category, :intro, :cover, :created_at, :updated_at
json.url game_url(game, format: :json)