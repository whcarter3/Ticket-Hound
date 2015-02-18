module API
  class WishlistsController < ApplicationController
    before_action :restrict_access

    def show
      user = User.find_by_access_token(params[:access_token])
      respond_with user.wishlist
    end

    def create
      user = User.find_by_access_token(params[:access_token])
      wishlist = user.wishlist.new(wishlist_params)
      if wishlist.save
        render json: wishlist, status: 201
      else
        render json: { errors wishlist.errors }, status: 422
      end
    end

    def restrict_access
      api_key = APIKey.find_by(access_token: params[:access_token])
      render plain: "You are not the owner of this wishlist.", status: 401 unless api_key
    end

    # private methods
    private
    
    def wishlist_params
      params.require(:wishlist).permit(:access_token)
    end
  # end class
  end
# end module
end