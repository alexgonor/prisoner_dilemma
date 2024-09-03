module Matches
  class Play < BaseService
    attr_reader :pair, :competition_id
    attr_accessor :move_1, :move_2, :moves_1, :moves_2, :points_1, :points_2, :match

    def initialize(pair, competition_id)
      @pair = pair
      @competition_id = competition_id
      @moves_1 = []
      @moves_2 = []
      @points_1 = 0
      @points_2 = 0
    end

    def call
      10.times do
        prepare_moves
        run_match
      end

      save_match
      save_scores
    end

    private

    def prepare_moves
      self.move_1 = eval(strategy_code(1))
      self.move_2 = eval(strategy_code(2))
      self.moves_1 << move_1
      self.moves_2 << move_2
    end

    def run_match
      if both_cooperate?
        self.points_1 += 3
        self.points_2 += 3
      elsif both_betray?
        self.points_1 += 1
        self.points_2 += 1
      else
        only_first_cooperate? ? self.points_2 += 5 : self.points_1 += 5
      end
    end

    def save_match
      self.match = Match.new(competition_id:, winner:)

      if match.valid?
        match.save
      else
        raise "Can't save match: #{match.errors}"
      end
    end

    def save_scores
      result = []

      strategy_match_data.each do |data|
        strategy_match = StrategyMatch.new(strategy: data[0], match:, moves: data[1], points: data[2])

        if strategy_match.valid?
          strategy_match.save
          result << strategy_match
        else
          raise "Can't save strategy match: #{strategy_match.errors}"
        end
      end
      result
    end

    def strategy_code(my_number)
      strategy = my_number.eql?(1) ? first_strategy : second_strategy
      opponent_number = my_number.eql?(1) ? 2 : 1
      strategy.code.gsub("{{my_number}}", my_number.to_s).gsub("{{opponent_number}}", opponent_number.to_s)
    end

    def strategy_match_data
      [[first_strategy, moves_1, points_1], [second_strategy, moves_2, points_2]]
    end

    def winner
      if points_1 > points_2
        first_strategy.title
      elsif points_1 < points_2
        second_strategy.title
      else
        "draw"
      end
    end

    def both_cooperate?
      move_1 && move_2
    end

    def both_betray?
      !move_1 && !move_2
    end

    def only_first_cooperate?
      move_1
    end

    def first_strategy
      pair.sort_by(&:id).first
    end

    def second_strategy
      pair.sort_by(&:id).last
    end
  end
end
