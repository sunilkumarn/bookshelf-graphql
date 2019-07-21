class Types::CoordinateType < Types::BaseObject

	field :latitude, type: Float, null: false
	field :longitude, type: Float, null: false

	def latitude
		object.first
	end

	def longitude
		object.last
	end

end