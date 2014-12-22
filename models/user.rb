class User < ActiveRecord::Base
	has_many :books, foreign_key: "user_id", dependent: :destroy

	def update_book book_id, price

		books.each do |book|	# bug line
		end					# bug line

		return nil unless (book = books.find_by_id book_id)
		puts book.name.to_s + " + " + price.to_s

		book.price = price
		puts book.save

		book = books.first
		puts book.name.to_s + " - " + book.price.to_s
		puts "================="

	end

end