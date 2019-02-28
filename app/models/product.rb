class Product < ApplicationRecord

  belongs_to :user, required: true
  belongs_to :category, required: true
  belongs_to :material

  def self.search(search)
    where("name LIKE ? OR description LIKE ? OR name LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%", "%#{search.capitalize}%", "%#{search.capitalize}%")

  end
  #carts
  has_many :favorite_products # just the 'relationships'
  has_many :favorited_by, through: :favorite_products, source: :user

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  has_attached_file :photo1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :photo1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo1, content_type: /\Aimage\/.*\z/

  has_attached_file :photo2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :photo2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\z/


end
