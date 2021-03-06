# Calling on the database methods that will be used for most of the classes.
require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Partner
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  attr_reader :id
  attr_accessor :assignment_id, :name
  
  # Initializes a new member object
  #
  # member_options - Hash containing key/values.
  # id - Integer Primary key in the 'members' table.
  # name - String of the member's name in the 'members' table
  # username (optional) - String of the member's username for the 'members' table
  #
  # Returns a Member object.
  def initialize(partner_options={})
    @id = partner_options["id"]
    @assignment_id = partner_options["assignment_id"]
    @name = partner_options["name"]
  end
  def to_json
    {'id' => @id, 'assignment_id' => @assignment_id, 'name' => @name}.to_json
  end
end