class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  validates_uniqueness_of :username, :email { case_sensitive: false }
  validates_presence_of :username, :email, :password, :password_confirmation
  validates_length_of :password, minimum: 8, maximum: 24, too_long: "Max password length is 24 characters", too_short: "Minimum password length is 8 characters"
  validates_format_of :title, with: \b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b

  field :username, type: String
  field :email, type: String
  field :password, type: String
  field :password_confirmation, type: String

  has_secure_password
end
