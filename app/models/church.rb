class Church < ApplicationRecord
  has_many :profiles
  has_many :admins
  
  def upcase_name
    name.upcase
  end
end
