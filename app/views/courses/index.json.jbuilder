json.array!(@courses) do |course|
  json.extract! course, :id, :coursecode, :name, :description, :duration
  json.url course_url(course, format: :json)
end
