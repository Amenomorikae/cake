class Address < ApplicationRecord
	belongs_to :end_user

	validates :postal_code, presence: true
	validates :street_address, presence: true
	validates :address, presence: true

	def full_address
		"#{self.postal_code} #{self.street_address} #{self.address}"
	end
end
