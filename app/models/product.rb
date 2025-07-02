class Product < ApplicationRecord
belongs_to :supplier
has_many :images
has_many :category_products
has_many :categories, through: :category_products
has_many :carted_products
has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :price, numericality: true
  validates :description, uniqueness: true
  validates :price, numericality: { only_integer: true }
  validates :name, length: { minimum: 1 }

  def friendly_created_at
  created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def is_discounted?
    if price < 10
      true
    else
      false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def primary_image_url
    if images.length > 0
      images[0].url
    else
      "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg"
    end
  end
end
