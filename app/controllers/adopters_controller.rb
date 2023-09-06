class AdoptersController < ApplicationController
    before_action :set_adopter, only: [:show, :update, :destroy]

  def index
    @adopters = Adopter.all
    render json: @adopters
  end

  def show
    render json: @adopter
  end

end
