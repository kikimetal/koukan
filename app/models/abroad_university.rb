class AbroadUniversity < ApplicationRecord
  belongs_to :country
  has_many :reports
end
