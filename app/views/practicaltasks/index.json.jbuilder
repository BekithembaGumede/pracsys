json.array!(@practicaltasks) do |practicaltask|
  json.extract! practicaltask, :id, :course_id, :taskname, :description, :duedate
  json.url practicaltask_url(practicaltask, format: :json)
end
