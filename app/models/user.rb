class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :products
  #Cart
  has_many :favorite_products
  has_many :favorites, through: :favorite_products, source: :product
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
