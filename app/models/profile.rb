class Profile < ApplicationRecord
  belongs_to :church
  belongs_to :category

  has_many :user_events
  has_many :events, through: :user_events, dependent: :destroy

  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :user_events

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
