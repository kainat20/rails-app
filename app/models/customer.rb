# frozen_string_literal: true

class Customer < User
  devise :registerable

  has_one :shipping_address, as: :addressable, class_name: 'ShippingAddress', dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :email, :phone, uniqueness: true
end
