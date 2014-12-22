class Association < ActiveRecord::Base
	belongs_to :user, dependent: :destroy, foreign_key: "user_id"
	belongs_to :book, dependent: :destroy, foreign_key: "book_id"
end