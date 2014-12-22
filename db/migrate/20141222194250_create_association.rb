class CreateAssociation < ActiveRecord::Migration
	def change
  		create_table :associations do |t|
  			t.integer :user_id
  			t.integer :book_id
  			t.integer :amount
		end
	end
end
