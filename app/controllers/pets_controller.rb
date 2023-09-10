

class PetsController < ApplicationController
    # before_action :authenticate_user!
    # before_action :authorize_admin, only: [:create, :update, :destroy]
  
    # GET /pets
    def index
      @pets = Pet.all
      render json: @pets
    end
  
    # GET /pets/1
    def show
      @pet = Pet.find(params[:id])
      render json: @pet
    end
  
    # POST /pets
    def create
      @pet = Pet.new(pet_params)
      if @pet.save
        render json: @pet, status: :created
      else
        render json: @pet.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /pets/1
    def update
      @pet = Pet.find(params[:id])
      if @pet.update(pet_params)
        render json: @pet
      else
        render json: @pet.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /pets/1
    def destroy
      @pet = Pet.find(params[:id])
      @pet.destroy
      head :no_content
    end
  
    private
  
    def pet_params
      params.permit(:name, :image, :species, :age, :description)
    end
  
    # def authorize_admin
    #   return unless current_user.admin 
    #   render json: { error: 'Unauthorized' }, status: :unauthorized
    # end
  end
  
