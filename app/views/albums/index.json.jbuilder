json.array!(@albums) do |album|
  json.extract! album, :id, :title, :duration, :rating, :info, :cover_url
  json.url album_url(album)
end
