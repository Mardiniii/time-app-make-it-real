json.array!(@activities) do |activity|
  json.extract! activity, :id, :project_id, :description, :started_at, :ended_at
  json.url activity_url(activity, format: :json)
end
