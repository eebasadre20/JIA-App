class Event < ApplicationRecord
  has_many :user_events
  has_many :profile, through: :user_events, dependent: :destroy

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :user_events
end
