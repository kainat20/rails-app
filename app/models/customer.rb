# frozen_string_literal: true

class Customer < User
  has_one :shipping_address, as: :addressable, class_name: 'ShippingAddress', dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :email, :phone, uniqueness: true

  after_create_commit :send_welcome_email, if: -> { encrypted_password.blank? }

  private

    def send_welcome_email
      CustomerMailer.welcome_customer(name, email).deliver!
    end
end
