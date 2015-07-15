#---------------------------------------------------------------------
# Main
#---------------------------------------------------------------------

get "/home" do
  erb :"mainmenu"
end

get "/assignment_menu" do
  erb :"assignments/assignment_menu"
end

get "/link_menu" do
  erb :"links/link_menu"
end

get "/partner_menu" do
  erb :"partners/partner_menu"
end

get "/" do
  erb :"home"
end