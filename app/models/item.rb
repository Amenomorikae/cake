class Item < ApplicationRecord
	enum status: {"販売中": 0, "売り切れ": 1}
	validates :name, presence: true
	validates :genre_id, presence: true
    validates :price, presence: true
    validates :sales_status, presence: true
end
