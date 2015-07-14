#api_controller
This controller created for the showing the database in json. This controller connects to the assignments table, links table and the partner table. It does the basic of the CRUD other then update.


#Model Diagrams
     Assignment
     -id(primary key) - integer
     -name - string
     -description - string
     -github_link - string
  
     Link
     -id(primary key) - integer
     -assignment_id - integer
     -article - string
     -video - string
  
     Partner
     -id(primary key) - integer
     -assignment_id - integer
     -name - string
  
  
# Controller code

Okay here is the first code which we get all the assignments in the json hash.
Starting out we need to create an empty array to hold each row in the database in.
 
    get "/api/assignments" do
      @assignment = []
  
Next we iterate through the table and push it into the empty array while we are doing the method .to_json on it and ending the loop at the end.

    Assignment.all.each do |assignment|
      @assignment.push(assignment.to_json)
    end

The .to_json method would serialize the object as json by this method. This method is in the model of the table I'm working on so like assignments have it's own as well as links and partners. So it pushes the variable for id into the instant id so on and so on for each column.

    def to_json
      {'id' => @id, 'name' => @name, 'description' => @description, 'github_link' => @github_link}.to_json
    end
  
  json @assignment
end
  
get "/api/assignments/:id" do
  @assignment = Assignment.find(params["id"])
  @assignment.to_json
end

get "/api/assignments/delete/:id" do
  Assignment.delete_row(params["id"])
end

get "/api/assignments/add/:name/:description/:github_link" do
  @assignment = Assignment.add({"name" => params["name"], "description" => params["description"], "github_link" => params["github_link"]})
  @assignment.to_json
end
