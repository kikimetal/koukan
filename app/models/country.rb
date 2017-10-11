class Country < ApplicationRecord
  belongs_to :region
  has_many :abroad_universities
end
