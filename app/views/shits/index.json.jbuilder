json.array!(@shits) do |shit|
  json.extract! shit, :id, :content, :reason, :author, :featured
  json.url shit_url(shit, format: :json)
end
