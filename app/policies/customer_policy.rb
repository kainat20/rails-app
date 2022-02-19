# frozen_string_literal: true

class CustomerPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def create?
    user.admin?
  end
end
