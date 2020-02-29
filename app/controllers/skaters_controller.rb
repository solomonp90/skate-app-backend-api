class SkatersController < ApplicationController

    def index
        @skaters = Skater.all 
        render json: @skaters
    end

    def show
        skater_id = params[:id]
        if logged_in_skater_id == skater_id.to_i
          @skater = Skater.find(skater_id)
          render json: @skater
        else
          render json: { go_away: true }, status: :unauthorized
        end
    end

    def create
        @skater = Skater.create(skater_params)
        if @skater.valid?
          payload = { skater_id: @skater.id }
            token = encode_token(payload)
            render json: { skater: @skater, skater_id: @skater.id, token:token }
          # render json: { token: create_token(@skater.id), skater_id: @skater.id } 
        else
          render json: { errors: @skater.errors.full_messages }, status: :unprocessable_entity
        end
    end 
    
    def update
        @skater = Skater.find(params[:id])
        @skater.update(skater_params)
        render json: @skater
    end

    def destroy
        @skater = Skater.find(params[:id])
        @skater.destroy
        render json: @skater 
    end

    private

    def skater_params
        params.permit(:name,:zip,:password)
    end


end
