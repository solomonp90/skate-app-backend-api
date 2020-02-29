class ApplicationController < ActionController::API

    private

    # def create_token(skater_id)
    #     JWT.encode({ skater_id: skater_id }, hmac_secret, "HS256")      
    # end

    def encode_token(payload)
       JWT.encode(payload, hmac_secret, "HS256")      
    end

    def hmac_secret
        ENV["TOKEN_SECRET"]
    end

    def logged_in_skater_id
        begin
          token = request.headers["Authorization"]
          payl_Arr = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
          skater_id = payl_Arr.first["skater_id"]
          skater_id
        rescue 
          nil
        end
      end
    
      def valid_token_exists
        !!logged_in_skater_id  
      end

end 
