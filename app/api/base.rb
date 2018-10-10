require 'jwt'

class Base< Grape::API
	helpers do
		def authenticate!
			begin  # "try" block
				if "Bearer"==/Bearer/.match(headers['Authorization'])[0]
					token=headers['Authorization'].split(" ")[1]
					decoded_token = JWT.decode token, ENV["SECRETKEY"], true, { algorithm: 'HS256' }
				else
					error!('Unauthorized.', 401)
				end
			
			rescue # optionally: `rescue Exception => ex`
				error!('Unauthorized.', 401)
			end
		end
	end
  	mount V1::Elephants
  	mount V1::Locations
	mount V1::Users
	mount Auth
end
