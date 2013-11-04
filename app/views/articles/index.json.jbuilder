json.array!(@articles) do |article|
  json.extract! article, :author, :heading, :perex, :body
  json.url article_url(article, format: :json)
end
