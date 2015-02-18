module API
  class AuthenticationController < ApplicationController
    respond_to :json
    def sign_in
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        render json: user.api_key
      else
        render json: { message: "E-Mail or Password incorrect, please try again..."}, status: 422
      end

    end
  # end class
  end
# end module
end