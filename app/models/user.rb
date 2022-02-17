# frozen_string_literal: true

class User < ApplicationRecord
  extend Devise::Models

  self.abstract_class = true

  devise :database_authenticatable, :registerable, :recoverable, :rememberable
  include DeviseTokenAuth::Concerns::User
end
