class PetsController < ApplicationController
    before_action :set_pet, only: [:show, :update, :destroy]

  def index
    @pets = Pet.all
    render json: @pets
  end

  def show
    render json: @pet
  end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pet.destroy
  end
end
