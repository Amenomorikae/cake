class Address < ApplicationRecord
	belongs_to :end_user

	validates :postalcode, presence: true
	validates :street_address, presence: true
	validates :address, presence: true
end
