class Api::CitiesController < ApplicationController
    def index
        @cities = City.all
        render json: @cities
    end

    def create
        @city = City.create!(city_params)

        render json: @city
    end

    def show
        @city = City.find(params[:id])
        render json: @city
    end


    private 
    def city_params
        params.require(:city).permit(:name, :photo_url, :description, :post)
    end
end
