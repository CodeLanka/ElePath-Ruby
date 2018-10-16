module AuthHelper
    def authenticate!
        begin  # "try" block
            if "Bearer"==/Bearer/.match(headers['Authorization'])[0]
                token=headers['Authorization'].split(" ")[1]
                JWT.decode token, ENV["SECRETKEY"], true, { algorithm: 'HS256' }
            else
                error!('Unauthorized.', 401)
            end
        
        rescue # optionally: `rescue Exception => ex`
            error!('Unauthorized.', 401)
        end
    end
    def current_user
        begin  # "try" block
            if "Bearer"==/Bearer/.match(headers['Authorization'])[0]
                token=headers['Authorization'].split(" ")[1]
                decoded_token = JWT.decode token, ENV["SECRETKEY"], true, { algorithm: 'HS256' }
                decoded_token[0]["user_id"]

            else
                error!('Unauthorized.', 401)
            end
        rescue # optionally: `rescue Exception => ex`
            error!('Unauthorized.', 401)
        end
    end
end
