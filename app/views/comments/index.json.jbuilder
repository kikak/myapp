json.array!(@comments) do |comment|
  json.extract! comment, :body, :email, :article_id
  json.url comment_url(comment, format: :json)
end
