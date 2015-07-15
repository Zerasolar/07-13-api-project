get "/api/assignments" do
  @assignment = []
  
  Assignment.all.each do |assignment|
    @assignment.push(assignment.to_json)
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

get "/api/links" do
  @link = []

  Link.all.each do |link|
    @link.push(link.to_json)
  end
  json @link
end

get "/api/links/:id" do
  @link = Link.find(params["id"])
  @link.to_json
end

get "/api/links/delete/:id" do
  Link.delete_row(params["id"])
end

get "/api/links/add/:assignment_id/:article/:video" do
  @link = Link.add({"assignment_id" => params["assignment_id"], "article" => params["article"], "video" => params["video"]})
  @link.to_json
end

get "/api/partners" do
  @partner = []

  Partner.all.each do |partner|
    @partner.push(partner.to_json)
  end
  json @partner
end

get "/api/partners/:id" do
  @partner = Partner.find(params["id"])
  @partner.to_json
end

get "/api/partners/delete/:id" do
  Partner.delete_row(params["id"])
end

get "/api/partners/add/:assignment_id/:name" do
  @partner = Partner.add({"assignment_id" => params["assignment_id"], "name" => params["name"]})
  @partner.to_json
end