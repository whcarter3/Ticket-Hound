class Concert < ActiveRecord::Base

  attr_accessible :tm_concert_id

  has_many :wishlists, dependent: :destroy
  has_many :users, :through => :wishlists
end
