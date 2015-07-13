get "/api/assignments" do
  @assignments = Assignment.all
  @assignments.to_json
get"/api/assignments/:id"

