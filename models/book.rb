class Book < ActiveRecord::Base
	has_many :user, foreign_key: "book_id", dependent: :destroy
end