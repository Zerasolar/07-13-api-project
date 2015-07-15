#api_controller
This controller created for the showing the database in json. It connects to the assignments table, links table and the partner table. It does the basic of the CRUD other then update.


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

json @assignment changes the array into what a json hash would look in the end.

      json @assignment
    end
  
This one we get just one row of the table. Just typing in the id with a number, but have to type it in the address bar edit to find the id for the find method. The method is connected to the database we set it up to look like a JSON hash.  
  
    get "/api/assignments/:id" do
      @assignment = Assignment.find(params["id"])
      @assignment.to_json
      end

Next method is to just delete one row in the table. We find the row by the id that we want to delete and delete it. Have to type in the id for this in the address bar with id.

    get "/api/assignments/delete/:id" do
      Assignment.delete_row(params["id"])
    end

Like the delete method, but much or complicated we pull in the add function with the local html address bar. With the address bar we gather the information we wanted from it with the address bar again and add it to the database.

get "/api/assignments/add/:name/:description/:github_link" do
  @assignment = Assignment.add({"name" => params["name"], "description" => params["description"], "github_link" => params["github_link"]})
  @assignment.to_json
end
