class Item < ApplicationRecord
	enum status: {販売中:0, 売り切れ:1}
	enum genre_id: {ケーキ:0, クッキー:1, プリンゼリー:2, 和菓子:3}
	validates :name, presence: true
    validates :price, presence: true
    validates :genre_id, presence: true
    validates :status, presence: true
    validates :description, presence: true

    has_many :cart_items
    has_many :order_details
    attachment :image
end
