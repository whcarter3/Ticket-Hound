class User < ActiveRecord::Base

	attr_accessible :username, :email, :password

	has_many :wishlists, dependent: :destroy
	has_many :concerts, :through => :wishlists

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

	
	private

	def downcase_email
		self.email = email.downcase
	end
end
