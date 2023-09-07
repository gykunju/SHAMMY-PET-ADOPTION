class AdoptionsController < ApplicationController

    def index
        render json: Adoption.all
    end

    def create 
        adoption = Adoption.create!(adoption_params)
        render json: adoption
    rescue ActiveRecord::RecordInvalid => e
        render json: {error: e.error.full_message}
    end
end
