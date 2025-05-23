class Supplier < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :email, uniqueness: true
  validates :phone_number, uniqueness: true

  # def products
  #   Products.where(supplier_id: id)
  # end

  def friendly_created_at
  created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
