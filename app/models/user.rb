class User < ApplicationRecord
	# before_save :encrypt_password
	# after_create :create_users_cart
	# has_many :products
	has_one :cart, dependent: :destroy
	has_one :wishlist, dependent: :destroy
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, length: {maximum: 25}, format: {with: VALID_EMAIL_REGEX}
	validates :password, presence: true, confirmation: true
	validates :password_confirmation, presence: true
end
