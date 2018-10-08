
class Base< Grape::API
  	mount V1::Elephants
  	mount V1::Locations
	mount V1::Users
	mount Auth

end
