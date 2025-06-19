class Product < ApplicationRecord
belongs_to :supplier
has_many :images
has_many :oders

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


  # def supplier
  #     Supplier.find_by(id: supplier_id)
  # end

  #   json.id product.id
  # json.name product.name
  # json.price product.price
  # json.description product.description
  # json.created_at product.friendly_created_at
  # json.tax product.tax
  # json.discounts product.is_discounted?
  # json.total product.total
  # json.supplier product.supplier
end
