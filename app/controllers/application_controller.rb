# class ApplicationController < ActionController::API
#     include ActionController::Cookies
class ApplicationController < ActionController::API
    # include DeviseTokenAuth::Concerns::SetUserByToken # If you're using Devise Token Auth
    include ActionController::Cookies

    # include Pundit
  
    # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
    private
  
    def user_not_authorized
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end

