class LoginController < ApplicationController
    
    def create
        
        @skater = Skater.find_by(name: params[:name])
        if @skater && @skater.authenticate(params[:password])
          payload = { skater_id: @skater.id ,name:@skater.name, skater:@skater} 
          token = encode_token(payload)       
          render json: { skater: @skater, skater_id: @skater.id, token: token, success: "Welcome back #{@skater.name}"}         
        else 
          render json: { errors: [ "That didn't match any skaters" ] }, status: :unprocessable_entity
        end 
      end

end
