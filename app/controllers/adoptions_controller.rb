class AdoptionsController < ApplicationController

    def index
        render json: Adoption.all
    end

end
