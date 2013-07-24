json.array!(@albums) do |album|
  json.extract! album, :title, :duration, :rating, :info, :cover_url
  json.url album_url(album, format: :json)
end
