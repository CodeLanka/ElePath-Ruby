module Entities
  	class Elephant < Grape::Entity
	   expose :name
	   expose :age
	   expose :height
	   expose :location, using: Entities::Location
  	end
end
