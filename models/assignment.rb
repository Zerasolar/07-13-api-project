# Calling on the database methods that will be used for most of the classes.
require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Assignment
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  attr_reader :id
  attr_accessor :name, :description, :github_link
  

  def initialize(assignment_options={})
    @id = assignment_options["id"]
    @name = assignment_options["name"]
    @description = assignment_options["description"]
    @github_link = assignment_options["github_link"]
  end
  
  def to_json
    {'id' => @id, 'name' => @name, 'description' => @description, 'github_link' => @github_link}.to_json
  end
end
