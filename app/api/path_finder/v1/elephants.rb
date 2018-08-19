
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


          desc 'Get all locations of specific Elephant'
          params do
          end
          get do

              location = Location.where('elephant_id LIKE :id ', id: params[:id])
              present location, with: Entities::Location
          end
        end
      
      end

    end
  end
end
