class UserEvent < ApplicationRecord
  belongs_to :profile
  belongs_to :event

  def balance
    700 - payment
  end

  def payment
    super.nil? ? 0 : super
  end

  def status
    super
    balance === 0 ? "paid" : "unpaid"
  end
end
