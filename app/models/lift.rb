class Lift < ApplicationRecord
  belongs_to :session
  has_many :lift_sets
  belongs_to :movement
end
