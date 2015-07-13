get "/add_partner" do
  erb :"partners/add_partner_form"
end

get "/list_partners" do
  erb :"partners/list_partner"
end

get "/save_partner" do
  assignmentid = Assignment.new(params["name"])
    @new_partner = Partner.add({"assignment_id" => params["name"], "name" => params["partner"]})
    erb :"partners/partner_added"
end

get "/change_partner" do
  erb :"partners/change_partner"
end

get "/change_partner_form/:x" do
  @partner_instance = Partner.find(params["x"])
  erb :"partners/partner"
end

get "/edited_partner/:x" do
  @partner_instance = Partner.find(params["x"])
    @partner_instance.save
    erb :"partners/partner_changed"
end

get "/delete_partner" do
  erb :"partners/delete_partner"
end

get "/gone_partner" do
  params["partner"].each do |partner|
    Partner.delete_row(partner)
  end
  erb :"partners/partner_deleted"
  
end
    