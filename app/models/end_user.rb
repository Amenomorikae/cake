class EndUser < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items
  has_many :orders
  has_many :addresses

  validates :name, presence: true
  validates :kana_surname, presence: true
  validates :kana_name, presence: true
  validates :postal_code, presence: true
  validates :street_address, presence: true
  validates :phone_number, presence: true
end
