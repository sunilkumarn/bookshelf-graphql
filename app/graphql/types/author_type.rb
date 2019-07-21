class Types::AuthorType < Types::BaseObject

	description "An Author"

	field :id, ID, null: false
	field :first_name, String, null: true
	field :last_name, String, null: false
	field :yob, Integer, null: false
	field :is_alive, Boolean, null: true
	field :full_name, String, null: true
	field :posts, type: [Types::PostType], null: false, description: 'Posts of an author'

	def full_name
		[object.first_name, object.last_name].compact.join(" ")
	end

	field :coordinates, type: Types::CoordinateType, null: true
end