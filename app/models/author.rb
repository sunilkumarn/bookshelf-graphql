class Author < ApplicationRecord

	has_many :posts

	def coordinates
		[rand(90).to_f, rand(90).to_f]
	end

end
