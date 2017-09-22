class Church < ApplicationRecord
  has_many :profiles
  
  def upcase_name
    name.upcase
  end
end
