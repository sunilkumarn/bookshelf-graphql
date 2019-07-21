class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :test_field, String, null: false,
    description: "An example field added by the generator" do 
    	argument	 :name, String, required: true
    end

  def test_field(name:)
    "Hello #{name}!"
  end

  field :author, Types::AuthorType, null: false, description: 'An author' do
  	argument :id, ID, required: true
  end

	field :authors, type: [Types::AuthorType], null: true
	field :posts, type: [Types::PostType], null: true, description: 'All posts' do
		argument :author_id, ID, required: false
	end

  def author(id: )
  	Author.where(id: id).last
  end

  def authors
  	Author.all
  end

  def posts(author_id: )
  	puts author_id.inspect
  	author_id ? Post.where(author_id: author_id) : Post.all
  end
end
