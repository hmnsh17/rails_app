json.extract! book, :id, :name, :title, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
