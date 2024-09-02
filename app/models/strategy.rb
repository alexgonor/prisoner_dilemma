class Strategy < ApplicationRecord
  has_many :strategy_matches
  has_many :matches, through: :strategy_matches
end
