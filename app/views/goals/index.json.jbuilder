json.array!(@goals) do |goal|
  json.extract! goal, :id, :content, :category, :num_value, :client_id
  json.url goal_url(goal, format: :json)
end
