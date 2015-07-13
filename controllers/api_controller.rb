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