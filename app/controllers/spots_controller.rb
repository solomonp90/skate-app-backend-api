class SpotsController < ApplicationController

    def index
        @spots = Spot.all 
        render json: @spots
    end

    def show
        @spot = Spot.find(params[:id])
        render json: @spot
    end

    def create
        @spot = Spot.create(spot_params)
        render json: @spot 
    end 
    
    def update
        @spot = Spot.find(params[:id])
        @spot.update(spot_params)
        render json: @spot
    end

    def destroy
        @spot = Spot.find(params[:id])
        @spot.destroy
        render json: @spot 
    end

    private

    def spot_params
        # params.require(:spot).permit(:name,:image,:kind,:details,:zip)
        params.permit(:name,:image,:kind,:details,:zip)
    end

end
