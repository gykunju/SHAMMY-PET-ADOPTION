class PetsController < ApplicationController
    before_action :set_pet, only: [:show, :update, :destroy]

  def index
    @pets = Pet.all
    render json: @pets
  end

  def show
    render json: @pet
  end
end
