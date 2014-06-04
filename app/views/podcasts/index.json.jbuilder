json.array!(@podcasts) do |podcast|
  json.extract! podcast, :id, :slug, :course_name, :podcast_name, :feed, :description
  json.url podcast_url(podcast, format: :json)
end
