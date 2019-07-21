class Types::AuthorInputType < GraphQL::Schema::InputObject

	graphql_name "AuthorInputType"
	description "All the attributes for creating an author"

	argument :id, ID, required: false, camelize: false
	argument :first_name, String, required: false, camelize: false
	argument :last_name, String, required: true, camelize: false
	argument :yob, Integer, required: false, camelize: false
	argument :is_alive, Boolean, required: false, camelize: false

end