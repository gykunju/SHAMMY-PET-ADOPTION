class AdoptersController < ApplicationController
    before_action :set_adopter, only: [:show, :update, :destroy]

  def index
    @adopters = Adopter.all
    render json: @adopters
  end

  def show
    render json: @adopter
  end

  def create
    @adopter = Adopter.new(adopter_params)

    if @adopter.save
      render json: @adopter, status: :created, location: @adopter
    else
      render json: @adopter.errors, status: :unprocessable_entity
    end
  end

  def update
    if @adopter.update(adopter_params)
      render json: @adopter
    else
      render json: @adopter.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @adopter.destroy
  end

  private

  def set_adopter
    @adopter = Adopter.find(params[:id])
  end

  def adopter_params
    params.require(:adopter).permit(:name, :contact_info, :email)
  end

end
