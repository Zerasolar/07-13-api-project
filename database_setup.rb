# Load/create the database for the dvd_owners project.
DATABASE = SQLite3::Database.new("code_assignments.db")
# Making the tables
DATABASE.execute("CREATE TABLE IF NOT EXISTS assignments (id INTEGER PRIMARY KEY, name STRING, description STRING, github_link STRING);")

DATABASE.execute("CREATE TABLE IF NOT EXISTS links (id INTEGER PRIMARY KEY, assignment_id INTEGER, article STRING, video STRING)")

DATABASE.execute("CREATE TABLE IF NOT EXISTS partners (id INTEGER PRIMARY KEY, assignment_id INTEGER, name STRING)")
# Get results as an Array of Hashes.

DATABASE.execute("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, email STRING, password STRING)")
DATABASE.results_as_hash = true
