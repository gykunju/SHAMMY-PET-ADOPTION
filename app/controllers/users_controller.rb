class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :validation
  require 'byebug'

  def index
    render json: User.all, except: ['created_at','updated_at','password_digest'], status: :ok
  end

  def create
    # encrypted_password = BCrypt::Password.create(params[:password])
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, except: ['created_at','updated_at','password_digest'], status: :created
  end

  def show
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
        render json: user, except: ['created_at','updated_at','password_digest'], status: :created
    else
      render json: {error: 'Email or password incorrect'}, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:user_name, :password, :email)
  end

  def validation(invalid)
    render json: {errors: invalid.record.errors.full_messages},status: :unprocessable_entity
  end
end
