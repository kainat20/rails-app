# frozen_string_literal: true

class Customer < User
  devise :registerable

  validates :phone, presence: true, uniqueness: true
  validates :email, uniqueness: true
end
