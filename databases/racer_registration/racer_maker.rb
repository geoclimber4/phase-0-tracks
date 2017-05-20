# Racer database for annual race each year

# Require gems
require 'sqlite3'
require 'faker'

#Database to keep racers in for sorting
db = SQLite3::Database.new("racers.db")
db.results_as_hash = true

create_table = <<-SQL 
	CREATE TABLE IF NOT EXISTS racers(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		race_class VARCHAR(255)
	)
SQL

#create racer table
db.execute(create_table)

#add a test racer
db.execute("INSERT INTO racers (name, race_class) VALUES ('Lance Armstrong', 'Pro')")