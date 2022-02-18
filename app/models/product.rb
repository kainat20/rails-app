# frozen_string_literal: true

class Product < ApplicationRecord
  validates :price, presence: true, numericality: { greater_than: 0.0 }
  validates :upc, uniqueness: true
end
