
module V1
  class Users < Grape::API

    version 'v1', using: :path
    format :json
    prefix :api

    resource :users do
      desc 'Get all users'
      get do
        authenticate!
        users = User.all
        present users
      end

      desc 'Update User details - only admins can update user data'
      params do
	   	  optional :name, type: String, desc: 'User name'
	      optional :password, type: String, desc: 'hashed Password'
      end

      put ':id'do
        authenticate!
        begin
          if User.find_by_id(current_user).isAdmin
            user = User.find_by_id(params[:id])
            user.update(params)
            present :status, 200
            present :user, user
          else
            error!('Unauthorized.', 401)
          end
        rescue
          error!('Unauthorized.', 401)
        end
      end

      desc 'Create a Users.'
      params do
        requires :user, type: Hash do
           requires :name, type: String, desc: 'User name'
           requires :password, type: String, desc: 'Hashed password'
        end
      end
      post do
        authenticate!

        user = User.create!(params[:user])
        present :status, 201
        present :user, user
      end

    end



  end
end