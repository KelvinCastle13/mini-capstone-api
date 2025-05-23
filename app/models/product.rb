class Product < ApplicationRecord
belongs_to :supplier

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
end
