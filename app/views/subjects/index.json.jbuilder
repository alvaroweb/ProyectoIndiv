json.array!(@subjects) do |subject|
  json.extract! subject, :id, :name, :schedule, :level, :teacher_id
  json.url subject_url(subject, format: :json)
end
