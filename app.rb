require 'active_record'
require 'json'
require 'sqlite3'

Dir["./models/*.rb"].each {|file| require file }

class ProblemApp

	dbconfig = YAML.load(File.open("config/database.yml").read)
	ActiveRecord::Base.establish_connection(dbconfig['development'])
	puts "Running... "

	user = User.first
	(1..10).each do |price|
		user.books.each do |book|	####### bug line !!!!!!!!!!!!!!!
		end						####### bug line !!!!!!!!!!!!!!!

		return nil unless (book = user.books.find_by_id 1)
		puts book.name.to_s + " + " + price.to_s

		book.price = price	# change attr
		puts book.save		# save changing

		book = user.books.first
		puts book.name.to_s + " - " + book.price.to_s
		puts "================="
	end
end