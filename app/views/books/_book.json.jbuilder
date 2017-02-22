json.extract! book, :id, :name, :author, :category, :intro, :cover, :created_at, :updated_at
json.url book_url(book, format: :json)