class AdoptionsController < ApplicationController

    def index
        render json: Adoption.all
    end

    def show
        adoption = Adoption.find_by(params[:id])
        render json: adoption
    end

    def create 
        adoption = Adoption.create!(adoption_params)
        render json: adoption
    rescue ActiveRecord::RecordInvalid => e
        render json: {error: e.error.full_message}
    end

    private

    def adoption_params
        params.permit(:location, :contact, :reason, :user_id, :pet_id)
    end
end
