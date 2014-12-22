require 'active_record'
require 'json'
require 'sqlite3'

Dir["./models/*.rb"].each {|file| require file }

class ProblemApp

	dbconfig = YAML.load(File.open("config/database.yml").read)
	ActiveRecord::Base.establish_connection(dbconfig['development'])
	puts "Running... "

	user = User.first
	(1..10).each do |i|
		user.update_book 1, i
	end

end