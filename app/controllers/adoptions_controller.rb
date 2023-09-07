class AdoptionsController < ApplicationController
    

    def index
        user_id = session[:user_id]
        adoptions = Adoption.where(user_id: user_id)
        render json: adoptions
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
            render json: {error: adoption.error.full_message}, status: :unprocessable_entity
        end
    end

    private

    def adoption_params
        params.require(:adoption).permit(:location, :contact, :reason, :pet_id, :user_id)
    end
end
