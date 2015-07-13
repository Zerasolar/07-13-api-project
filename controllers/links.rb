get "/add_link" do
  erb :"links/add_link_form"
end

get "/list_links" do
  erb :"links/list_links"
end

get "/save_link" do
  assignmentid = Assignment.new(params["name"])
    @new_link = Link.add({"assignment_id" => params["name"].to_i, "article" => params["article"], "video" =>params["video"]})
    erb :"links/link_added"
end

get "/change_link" do
  erb :"links/change_link"
end

get "/change_link_form/:x" do
  @link_instance = Link.find(params["x"])
  erb :"links/link"
end

get "/edited_link/:x" do
  @link_instance = Link.find(params["x"])
    @link_instance.save
    erb :"links/link_changed"
end

get "/delete_link" do
  erb :"links/delete_link"
end

get "/gone_link" do
  params["link"].each do |link|
    Link.delete_row(assignment)
  end
  erb :"links/link_deleted"
  
end
    