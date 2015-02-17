class Concert < ActiveRecord::Base
  belongs_to :wishlist
  has_many :users, through: :wishlists
end
