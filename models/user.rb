class User < ActiveRecord::Base
	has_many :books, foreign_key: "user_id", dependent: :destroy
end