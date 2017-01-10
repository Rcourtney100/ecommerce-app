class Product < ApplicationRecord
	belongs_to :cart
	belongs_to :wishlist
	belongs_to :user

	def self.search(search)
  where("description LIKE ?", "%#{search}%") 

end
end

