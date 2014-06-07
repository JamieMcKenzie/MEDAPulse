json.array!(@clients) do |client|
  json.extract! client, :id, :name, :phone, :salesforce_id
  json.url client_url(client, format: :json)
end
