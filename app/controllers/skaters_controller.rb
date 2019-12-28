class SkatersController < ApplicationController

    def index
        @skaters = Skater.all 
        render json: @skaters
    end

    def show
        @skater = Skater.find(params[:id])
        render json: @skater
    end

    def create
        @skater = Skater.create(skater_params)
        render json: @skater 
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
        # params.require(:skater).permit(:name,:zip)
        params.permit(:name,:zip)
    end

end
