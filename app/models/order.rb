# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer

  validates :number, :date, :payment_type, presence: true
  validates :number, uniqueness: true

  enum payment_type: { cash: 'cash', credit_card: 'credit_card', check: 'check', other: 'other' }
end
