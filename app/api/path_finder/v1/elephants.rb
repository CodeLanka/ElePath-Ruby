
module V1
  class Elephants < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    resource :elephants do
      desc 'Return list of elephants'
      get do
        elephants = Elephant.all
        present  elephants, with: Entities::Elephant
      end
      desc 'Return a specific Elephant'
      route_param :id do
        get do
         elephant = Elephant.find(params[:id])
         present elephant, with: Entities::Elephant
        end

        resource :location do
          desc 'Create a Location.'
          params do
             requires :location, type: Hash do
               requires :date, type: DateTime, desc: 'Location date'
               requires :latitude, type: Float, desc: 'latitude of the location.'
               requires :longitude, type: Float, desc: 'longitude of the location'
               requires :user, type: User, desc: 'User ID'

             end
          end
          post do
             elephant = Elephant.find(params[:id])
             location = Location.new(params[:flow])
             location = elephant.location.create!(params[:flow])
          end
        end
      
      end

    end
  end
end
