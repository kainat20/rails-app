# frozen_string_literal: true

class User < ApplicationRecord
  extend Devise::Models

  devise :database_authenticatable, :recoverable, :rememberable

  include DeviseTokenAuth::Concerns::User

  validates :name, :email, :phone, presence: true
  validates :password, :password_confirmation, presence: true, on: :create
  validates :email, format: { with: Devise.email_regexp }
end
