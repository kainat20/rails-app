# frozen_string_literal: true

class Product < ApplicationRecord
  validates :price, presence: true
  validates :upc, uniqueness: true
end
