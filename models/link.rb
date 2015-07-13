# Calling on the database methods that will be used for most of the classes.
require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Link
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  attr_reader :id
  attr_accessor :assignment_id, :article, :video
  
  # Initializes a new member object
  #
  # member_options - Hash containing key/values.
  # id - Integer Primary key in the 'members' table.
  # name - String of the member's name in the 'members' table
  # username (optional) - String of the member's username for the 'members' table
  #
  # Returns a Member object.
  def initialize(link_options={})
    @id = link_options["id"]
    @assignment_id = link_options["assignment_id"]
    @article = link_options["article"]
    @video = link_options["video"]
  end
  
  def to_json
    {'id' => @id, 'assignment_id' => @assignment_id, 'article' => @article, 'video' => @video}.to_json
  end
end