require 'jwt'
require 'grape-swagger'

class Base< Grape::API
	format :json
	helpers AuthHelper
  	mount V1::Elephants
  	mount V1::Locations
	mount V1::Users
	mount Auth
	add_swagger_documentation

end
