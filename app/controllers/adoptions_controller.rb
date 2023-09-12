class AdoptionsController < ApplicationController
    

    def index
        user_id = session[:user_id]
        adoptions = Adoption.where(user_id: user_id)
        pet_ids = adoptions.pluck(:pet_id)
        pets = Pet.where(id: pet_ids)
        render json: pets
    end

    def show
        adoption = Adoption.find_by(params[:id])
        render json: adoption
    end

    def create 
        adoption = Adoption.new(adoption_params)
        adoption.user_id = session[:user_id]
        if adoption.save
            render json: adoption
        else
            render json: {error: adoption.errors.full_message}, status: :unprocessable_entity
        end
    end

    private

    def adoption_params
        params.require(:adoption).permit(:location, :contact, :reason, :pet_id, :user_id)
    end
end
