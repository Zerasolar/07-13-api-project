require "pry"
require "sinatra"
require "sinatra/reloader"
require "sinatra/base"
require "sinatra/json"
require "json"

#SQL/Database
require "sqlite3"
require_relative "database_setup.rb"

# Models
require_relative "models/assignment.rb"
require_relative "models/link.rb"
require_relative "models/partner.rb"

# Controllers
require_relative "controllers/api_controller.rb"
require_relative "controllers/main.rb"
require_relative "controllers/assignments.rb"
require_relative "controllers/links.rb"
require_relative "controllers/partners.rb"