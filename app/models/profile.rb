class Profile < ApplicationRecord
  belongs_to :church
  belongs_to :category

  has_many :user_events
  has_many :events, through: :user_events

  accepts_nested_attributes_for :events
  accepts_nested_attributes_for :user_events
end
