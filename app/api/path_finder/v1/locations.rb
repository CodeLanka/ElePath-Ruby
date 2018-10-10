module V1
	class Locations < Grape::API
	    version 'v1', using: :path
		format :json
		prefix :api
		resource :locations do
		    desc 'Return list of locations'
			get do
			  authenticate!
		      locations = Location.all
		      present locations
			end
			
			desc 'Delete a Location.'
			params do
				requires :id, type: Integer, desc: 'Location Id'
			  
			end
			delete do
				authenticate!
			   	location = Location.delete(params[:id])
			   	present :status, 201
			   	present :location, location
			end
		end
	end
end