module API
  class UsersController < ApplicationController
    protect_from_forgery with: :null_session
    respond_to :json

    def index
      users = User.all
      respond_with users
    end

    def show
      user = User.find(params[:id])
      respond_with user
    end

    def create
      user = User.new(user_params)
      if user.save
        respond_with user, location: [:api, user]
      else
        respond_with user
      end
    end

    def update
      user = User.find(params[:id])
      if user.update_attributes(user_params)
        head 204
      else
        respond_with user
      end
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      head 204
    end

    # User Params

    private
    
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_digest, )
    end

  end
end