class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  validates_uniqueness_of :username, :email

  field :username, type: String
  field :email, type: String
  field :password, type: String
  field :password_confirmation, type: String

  has_secure_password
end
