class User < ApplicationRecord
	before_save { email.downcase! }
	validates :name, presence: true, length: {maximum: 50}
	EMAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-])*\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255}, format: {with: EMAIL_REGEX},
																	uniqueness: {case_sensitvie: false}

		has_secure_password
		validates :password, presence: true, length: {minimum: 8}
end
