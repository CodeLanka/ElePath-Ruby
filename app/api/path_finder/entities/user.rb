module Entities
  	class User < Grape::Entity
	   expose :name
	   expose :last_login
  	end
end
