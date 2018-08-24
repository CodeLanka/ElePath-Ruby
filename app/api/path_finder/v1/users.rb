
module V1
  class Users < Grape::API
    version 'v1', using: :path
    format :json
    prefix :api

    resource :users do
	  desc 'Get all users'
	  get do
	    users = User.all
	    present users
	  end

      desc 'Update User details'
        #headers: Api::Support.auth_header,
        #tags: [ Api::Support.set_cms_tag(namespace) ]
      params do
	   	optional :name,         type: String,   desc: 'User name'
	    optional :password,        type: String,   desc: 'hashed Password'
      end

      put ':id'do
        user = User.find_by_id(params[:id])
        user.update(params)
        present :status, 200
        present :user, user
      end

      desc 'Create a Users.'
      params do
        requires :user, type: Hash do
           requires :name, type: String, desc: 'User name'
           requires :password, type: String, desc: 'Hashed password'
        end
      end
      post do

         user = User.create!(params[:user])
         present :status, 201
         present :user, user
      end

    end



  end
end