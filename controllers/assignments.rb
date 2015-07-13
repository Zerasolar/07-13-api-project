get "/add_assignment" do
  erb :"assignments/add_assignment_form"
end

get "/list_assignments" do
  erb :"assignments/list_assignments"
end

get "/save_assignment" do
  a = Assignment.new(params)
  
    @new_assignment = Assignment.add({"name" => params["name"], "description" => params["description"], "github_link" =>["github_link"]})
    erb :"assignments/assignment_added"
end

get "/change_assignment" do
  erb :"assignments/change_assignment"
end

get "/change_assignment_form/:x" do
  @assignment_instance = Assignment.find(params["x"])
  erb :"assignments/assignment"
end

get "/edited_assignment/:x" do
  @assignment_instance = Assignment.find(params["x"])
    @assignment_instance.save
    erb :"assignments/assignment_changed"
end

get "/delete_assignment" do
  erb :"assignments/delete_assignment"
end

get "/gone_assignment" do
  params["assignment"].each do |assignment|
    Assignment.delete_row(assignment)
  end
  erb :"assignments/assignment_deleted"
  
end
    