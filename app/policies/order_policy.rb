# frozen_string_literal: true

class OrderPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.admin? || record.pluck(:customer_id).include?(user.id)
  end

  def create?
    user.admin? || user.customer?
  end
end
