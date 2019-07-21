class Types::PostType < Types::BaseObject

	field :id, ID, null: false
	field :title, String, null: false
	field :content, String, null: true
	field :author_id, ID, null: false

end