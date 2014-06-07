json.array!(@steps) do |step|
  json.extract! step, :id, :content, :status, :by_when, :goal_id
  json.url step_url(step, format: :json)
end
