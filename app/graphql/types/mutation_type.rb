class Types::MutationType < Types::BaseObject

  field :create_author, type: Types::AuthorType, mutation: Mutations::CreateAuthor do 
    argument :author, Types::AuthorInputType, required: true
  end

  field :update_author, type: Types::AuthorType, null: true do 
    argument :author, Types::AuthorInputType, required: true
  end

  def update_author(author: )
    puts "Author: #{author.to_h.inspect}"
    existing = Author.where(id: author[:id]).first

    puts existing.inspect
    existing&.update author.to_h
    existing.reload
  end

end
