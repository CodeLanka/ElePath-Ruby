
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
               requires :user_id, type: Integer, desc: 'User ID'
            end
          end
          post do

             @elephant = Elephant.find(params[:id])
             @location = Location.new(params[:location])
             @location = @elephant.location.create!(params[:location])
             #@elephant.update(stock: @location.newStock)

             #location = Location.create!({date: params[:date], latitude: params[:latitude], longitude: params[:longitude], elephant_id: params[:id],  user_id: params[:user_id]})
             present :status, 201
             present :location, @location
          end


          desc 'Get all locations of specific Elephant'
          params do
          end
          get do
              location = Location.where('elephant_id = :id ', id: params[:id])

              present location, with: Entities::Location
          end
        end
      
      end

    end
  end
end
