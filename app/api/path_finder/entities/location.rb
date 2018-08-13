module Entities
  	class Location < Grape::Entity
	   expose :date
	   expose :latitude
	   expose :longitude
	   expose :user, using: Entities::User
  	end
end
