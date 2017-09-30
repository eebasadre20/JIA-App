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

    return 'unpaid' if payment === 0.0

    if balance === 0 || balance === 0.0
      "paid"
    else
      "partial"
    end
  end
end
