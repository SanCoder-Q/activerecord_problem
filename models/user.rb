class User < ActiveRecord::Base
	has_many :my_books,class_name: "Association", foreign_key: "user_id", dependent: :destroy

	def update_book book_id, amount
		# self.why?
		my_books.each do |my_book|
		end
		return nil unless (book = Book.find_by_id book_id)
		puts book.name.to_s + " + " + amount.to_s
		if my_book = my_books.find_by(book: book)
			if amount == 0
				my_book.destroy
			else
				puts my_book.amount = amount
				puts my_book.save

				my_book = my_books.first
				puts my_book.book.name.to_s + " - " + my_book.amount.to_s
				puts "================="
			end
		else
			return unless amount > 0
			my_books.create book: book, amount: amount
		end
	end

	def why?
		my_books.each do |my_book|
		end
	end
end