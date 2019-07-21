class Mutations::CreateAuthor < GraphQL::Schema::Mutation

	null true

	def resolve(author: )
		Author.create(author.to_h)
	end

end