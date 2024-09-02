class Match < ApplicationRecord
  belongs_to :competition
  has_many :strategy_matches
  has_many :strategies, through: :strategy_matches
end
