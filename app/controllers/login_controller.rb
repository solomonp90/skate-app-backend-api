class LoginController < ApplicationController
    
    def create
        
        skater = Skater.find_by("lower(name) = ?", params[:name].downcase)
        if skater && skater.authenticate(params[:password])
          render json: { token: create_token(skater.id), skater_id: skater.id }
        else 
          render json: { errors: [ "That didn't match any skaters WE know about 💁" ] }, status: :unprocessable_entity
        end 
      end

end
