json.array!(@hosted_feeds) do |hosted_feed|
  json.extract! hosted_feed, :id, :title, :slug, :description
  json.url hosted_feed_url(hosted_feed, format: :json)
end
