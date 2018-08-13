module V1
	class Locations < Grape::API
	    version 'v1', using: :path
		format :json
		prefix :api
		resource :locations do
		    desc 'Return list of locations'
		    get do
		      locations = Location.all
		      present locations
		    end
		end
	end
end