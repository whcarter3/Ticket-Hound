class Concert < ActiveRecord::Base
  has_many :users, :through => :wishlists
end
