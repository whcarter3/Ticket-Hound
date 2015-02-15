class User < ActiveRecord::Base
	attr_accessible :username, :email, :password

	# EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

	validates :username, 	presence: true, 
							uniqueness: { case_sensitive: false}, 
							length: {in: 3..24}

	validates :password, 	presence: true, 
							confirmation: true, 
							length: {in: 8..24}

	validates :email, 		presence: true,
							uniqueness: {case_sensitive: false}
							#, :with => EMAIL_REGEX

	has_secure_password 

	
	private

	def downcase_email
		self.email = email.downcase
	end
end
