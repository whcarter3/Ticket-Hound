class User < ActiveRecord::Base

	attr_accessible :username, :email, :password

	has_many :wishlists, dependent: :destroy
	has_many :concerts, :through => :wishlists
	has_one :api_key, dependent: :destroy
	before_create :create_api_key

	validates :username, 	
						presence: true, 
						uniqueness: { case_sensitive: false}, 
						length: {in: 3..24}

	validates :password, 	
						presence: true, 
						confirmation: true, 
						length: {in: 8..24}

	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, 		
						presence: true,
						uniqueness: {case_sensitive: false},
						format: {:with => EMAIL_REGEX}

	has_secure_password

	def self.find_by_access_token(access_token)
		APIKey.find_by(access_token: access_token).user
	end
	
	
	# private methods
	private

	def create_api_key
		self.api_key = APIKey.create
	end

	def downcase_email
		self.email = email.downcase
	end
end
