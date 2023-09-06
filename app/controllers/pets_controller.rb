class PetsController < ApplicationController
    def index 
        render json: Pet.all
    end
    def show 
        pet = Pet.find(params[:id])
        render json: pet
    end
    def create 
        pet = Pet.create!(pet_params)
        render json: pet
    rescue ActiveRecord::RecordInvalid => e
     render json: {error: e.error.full_messages}, status: :unprocessable_entity

    end
    private
    def pet_params
        params.permit(:name, :image, :age, :description)
    end
end
